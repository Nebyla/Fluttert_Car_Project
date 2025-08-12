import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcar/present/setting/map/notification_service.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import '../../../core/ui/ui.dart';
import '../bloc/mileage_bloc.dart';
import '../map/map.dart';
import '../theme/cubit/theme_cubit.dart';


class SettingsPage extends StatefulWidget {
  final String carId;

  const SettingsPage({super.key, required this.carId});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final int _selectedIndex = 1;
  final List<MapObject> _mapObjects = [];
  final Point _simferopolCenter = const Point(latitude: 44.9489, longitude: 34.1001);
  late YandexMapController _controller;

  Timer? _mileageTimer;
  int? _lastNotifiedService;

  @override
  void initState() {
    super.initState();

    final int carId = int.parse(widget.carId);

    // Загружаем пробег
    context.read<MileageBloc>().add(MileageEvent.loadMileage(carId: carId));

    // Загружаем автосервисы
    _loadAutoServices();

    // Автоматически увеличиваем пробег каждые 10 секунд на 100 км
    _mileageTimer = Timer.periodic(const Duration(seconds: 10), (_) {
      final bloc = context.read<MileageBloc>();
      bloc.add(MileageEvent.increaseMileage(carId: carId, by: 100));

      final state = bloc.state;
      state.whenOrNull(loaded: (currentMileage) {
        final nextService = ((currentMileage / 10000).ceil()) * 10000;

        if (_lastNotifiedService != nextService && currentMileage >= nextService) {
          _lastNotifiedService = nextService;
          NotificationService.showNotification(
            title: 'Пора пройти ТО',
            body: 'Пробег достиг $nextService км. Заедьте в автосервис.',
          );
        }
      });
    });
  }

  @override
  void dispose() {
    _mileageTimer?.cancel();
    super.dispose();
  }

  Future<void> _loadAutoServices() async {
    final services = await YandexMapService.searchAutoServices(
      boundingBox: BoundingBox(
        southWest: const Point(latitude: 44.9200, longitude: 34.0500),
        northEast: const Point(latitude: 44.9800, longitude: 34.1600),
      ),
    );

    setState(() {
      _mapObjects
        ..clear()
        ..addAll(services);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state.isDark;

    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
        ),
        title: const Text('Настройки', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            BlocBuilder<MileageBloc, MileageState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),
                  loading: () => const CircularProgressIndicator(),
                  loaded: (currentMileage) {
                    final nextService = ((currentMileage / 10000).ceil()) * 10000;
                    return Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.build, size: 28),
                                SizedBox(width: 8),
                                Text('Следующее ТО', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Text('Текущий пробег: $currentMileage км', style: TextStyle(fontSize: 16)),
                            Text('Следующее ТО на: $nextService км', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    );
                  },
                  error: (e) => const Text("Ошибка при загрузке пробега"),
                );
              },
            ),
            const SizedBox(height: 30),
            const Text('Автосервисы в Симферополе (Яндекс.Карта)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 4,
              margin: const EdgeInsets.only(top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  height: 300,
                  child: YandexMap(
                    onMapCreated: (controller) async {
                      _controller = controller;
                      await _controller.moveCamera(
                        CameraUpdate.newCameraPosition(
                          CameraPosition(target: _simferopolCenter, zoom: 13),
                        ),
                      );
                    },
                    mapObjects: _mapObjects,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: MyNavigationBar(selectIndex: _selectedIndex),
    );
  }
}