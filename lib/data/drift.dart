import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

part 'drift.g.dart';  // This is needed for code generation


@DataClassName('Car')
class Cars extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get motor => text()();
  IntColumn get mileage => integer()();
}


@DataClassName('CarPart')
class Parts extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get carId => integer().customConstraint('REFERENCES cars(id) ON DELETE CASCADE')();
  TextColumn get detailDescription => text()();
  IntColumn get price => integer()();
  TextColumn get imagePath => text().nullable()();
}

// 🏢 Main Database
@DriftDatabase(tables: [Cars, Parts])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2; // ✅ Keep this updated when you modify schema


  Future<void> updateMileage(int carId, int newMileage) async {
    await (update(cars)..where((c) => c.id.equals(carId)))
        .write(CarsCompanion(mileage: Value(newMileage)));
  }
  Future<int> updateCar({
    required int id,
    required String name,
    required String motor,
    required int mileage,
  }) {
    return (update(cars)..where((c) => c.id.equals(id))).write(
      CarsCompanion(
        name: Value(name),
        motor: Value(motor),
        mileage: Value(mileage),
      ),
    );
  }

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll(); // ✅ Create all tables initially
    },
    onUpgrade: (m, from, to) async {
      if (from == 1 && to == 2) {
        await m.addColumn(parts, parts.imagePath); // ✅ Example: Adding new column
      }
    },
  );
  // 🚗 Car Functions
  Future<int> insertCar(CarsCompanion car) => into(cars).insert(car);
  Future<List<Car>> getAllCars() => select(cars).get();
  Future<int> deleteCar(int id) => (delete(cars)..where((c) => c.id.equals(id))).go();

  // 🛠 Parts Functions
  Future<int> insertPart(PartsCompanion part) => into(parts).insert(part);
  Future<List<CarPart>> getPartsByCarId(int carId) =>
      (select(parts)..where((p) => p.carId.equals(carId))).get();
  Future<int> deletePart(int id) => (delete(parts)..where((p) => p.id.equals(id))).go();

  Future<int> getCurrentMileage(int carId) async {
    final car = await (select(cars)..where((tbl) => tbl.id.equals(carId))).getSingleOrNull();
    return car?.mileage ?? 0;
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'cars.sqlite'));
    return NativeDatabase(file);
  });
}

