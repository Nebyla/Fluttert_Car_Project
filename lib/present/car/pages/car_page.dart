import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:projectcar/core/ui/ui.dart';
import '../../../data/drift.dart';
import '../../cars/cubit/car_cubit.dart';
import '../../setting/theme/cubit/theme_cubit.dart';
import '../bloc/carpart_bloc.dart';

class CarPage extends StatefulWidget {
  final String carId;
  final String carName;

  const CarPage({super.key, required this.carId, required this.carName});

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  final int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<PartsBloc>().add(PartsEvent.loadParts(
        carId: int.parse(widget.carId))); // Load parts for the car
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state.isDark;
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.carName,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(
                color: Theme.of(context)
                    .colorScheme
                    .primary,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
                shadows: [
                  Shadow(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white24
                        : Colors.black26,
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(isDark ? Icons.nightlight_round : Icons.wb_sunny),
              onPressed: () {
                final newBrightness =
                    isDark ? Brightness.light : Brightness.dark;
                context.read<ThemeCubit>().setThemeBrightness(newBrightness);
              },
            ),
          ],
        ),
      ),
      body: BlocBuilder<PartsBloc, PartsState>(
        builder: (context, state) {
          return state.when(
            idle: (parts) => Center(child: Text("Добавьте запчасти")),
            loading: () => Center(child: CircularProgressIndicator()),
            successLoading: (parts) {
              final totalPrice = parts.fold<double>(
                0,
                    (previousValue, element) => previousValue + (element.price ?? 0),
              );
              final hasParts = parts.isNotEmpty;
              print('📥 Loaded parts:');
              for (var p in parts) {
                print('🧩 ${p.detailDescription} - ${p.imagePath}');
              }
              return ListView.builder(
                padding: EdgeInsets.only(bottom: 120), // чтобы оставить место под FAB
                itemCount: hasParts ? parts.length + 1 : 0, // добавляем 1 для итоговой карточки
                itemBuilder: (context, index) {
                  if (index < parts.length) {
                    final part = parts[index];
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (part.imagePath != null)
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => Scaffold(
                                      backgroundColor: Colors.black,
                                      appBar: AppBar(
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                        iconTheme: IconThemeData(color: Colors.white),
                                      ),
                                      body: Center(
                                        child: PhotoView(
                                          backgroundDecoration: BoxDecoration(color: Colors.black),
                                          imageProvider: FileImage(File(part.imagePath!)),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                                child: Image.file(
                                  File(part.imagePath!),
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          else
                            Container(
                              height: 180,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(16)),
                              ),
                              child: Icon(Icons.build,
                                  size: 60, color: Colors.grey[700]),
                            ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        part.detailDescription,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        "Цена: ${part.price?.toStringAsFixed(2) ?? 'Не указано'} руб.",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[700]),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete, color: Colors.red),
                                  onPressed: () {
                                    context.read<PartsBloc>().add(
                                      PartsEvent.deletePart(
                                        partId: part.id,
                                        carId: int.parse(widget.carId),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // Это итоговая карточка
                    return Container(
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Итоговая стоимость:",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "$totalPrice руб.",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              );
            },
            error: (error, parts) => Center(child: Text("Ошибка: $error")),
          );
        },
      ),
      floatingActionButton: DialogCreateRepair(carId: int.parse(widget.carId)),
      // Pass carId
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyNavigationBar(selectIndex: _selectedIndex),
    );
  }
}
