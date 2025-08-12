import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import '../../../main.dart'; // для navigatorKey

class YandexMapService {
  static Future<List<MapObject>> searchAutoServices({
    required BoundingBox boundingBox,
    int maxResults = 30,
  }) async {
    try {
      final resultTuple = await YandexSearch.searchByText(
        searchText: 'автосервис',
        geometry: Geometry.fromBoundingBox(boundingBox),
        searchOptions: SearchOptions(resultPageSize: maxResults),
      );

      final result = await resultTuple.$2;

      if (result.items == null || result.items!.isEmpty) {
        debugPrint('❗️Ничего не найдено по запросу "автосервис"');
        return [];
      }

      debugPrint('✅ Найдено автосервисов: ${result.items!.length}');

      return result.items!.map((item) {
        final validGeometries = item.geometry.where((g) => g.point != null).toList();
        if (validGeometries.isEmpty) return null;

        final point = validGeometries.first.point!;
        final name = item.name;

        return PlacemarkMapObject(
          mapId: MapObjectId(name),
          point: point,
          icon: PlacemarkIcon.single(
            PlacemarkIconStyle(
              image: BitmapDescriptor.fromAssetImage('assets/assets/circle.png'),
              scale: 0.05,
            ),
          ),
          onTap: (object, _) {
            showDialog(
              context: navigatorKey.currentContext!,
              builder: (_) => AlertDialog(
                title: Text(name),
                content: const Text('Это автосервис'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(navigatorKey.currentContext!),
                    child: const Text('Закрыть'),
                  ),
                ],
              ),
            );
          },
        );
      }).whereType<PlacemarkMapObject>().toList();
    } catch (e) {
      debugPrint('🚨 Ошибка при поиске автосервисов: $e');
      return [];
    }
  }
}
