// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift.dart';

// ignore_for_file: type=lint
class $CarsTable extends Cars with TableInfo<$CarsTable, Car> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CarsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _motorMeta = const VerificationMeta('motor');
  @override
  late final GeneratedColumn<String> motor = GeneratedColumn<String>(
      'motor', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _mileageMeta =
      const VerificationMeta('mileage');
  @override
  late final GeneratedColumn<int> mileage = GeneratedColumn<int>(
      'mileage', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, motor, mileage];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cars';
  @override
  VerificationContext validateIntegrity(Insertable<Car> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('motor')) {
      context.handle(
          _motorMeta, motor.isAcceptableOrUnknown(data['motor']!, _motorMeta));
    } else if (isInserting) {
      context.missing(_motorMeta);
    }
    if (data.containsKey('mileage')) {
      context.handle(_mileageMeta,
          mileage.isAcceptableOrUnknown(data['mileage']!, _mileageMeta));
    } else if (isInserting) {
      context.missing(_mileageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Car map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Car(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      motor: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}motor'])!,
      mileage: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}mileage'])!,
    );
  }

  @override
  $CarsTable createAlias(String alias) {
    return $CarsTable(attachedDatabase, alias);
  }
}

class Car extends DataClass implements Insertable<Car> {
  final int id;
  final String name;
  final String motor;
  final int mileage;
  const Car(
      {required this.id,
      required this.name,
      required this.motor,
      required this.mileage});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['motor'] = Variable<String>(motor);
    map['mileage'] = Variable<int>(mileage);
    return map;
  }

  CarsCompanion toCompanion(bool nullToAbsent) {
    return CarsCompanion(
      id: Value(id),
      name: Value(name),
      motor: Value(motor),
      mileage: Value(mileage),
    );
  }

  factory Car.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Car(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      motor: serializer.fromJson<String>(json['motor']),
      mileage: serializer.fromJson<int>(json['mileage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'motor': serializer.toJson<String>(motor),
      'mileage': serializer.toJson<int>(mileage),
    };
  }

  Car copyWith({int? id, String? name, String? motor, int? mileage}) => Car(
        id: id ?? this.id,
        name: name ?? this.name,
        motor: motor ?? this.motor,
        mileage: mileage ?? this.mileage,
      );
  Car copyWithCompanion(CarsCompanion data) {
    return Car(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      motor: data.motor.present ? data.motor.value : this.motor,
      mileage: data.mileage.present ? data.mileage.value : this.mileage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Car(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('motor: $motor, ')
          ..write('mileage: $mileage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, motor, mileage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Car &&
          other.id == this.id &&
          other.name == this.name &&
          other.motor == this.motor &&
          other.mileage == this.mileage);
}

class CarsCompanion extends UpdateCompanion<Car> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> motor;
  final Value<int> mileage;
  const CarsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.motor = const Value.absent(),
    this.mileage = const Value.absent(),
  });
  CarsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String motor,
    required int mileage,
  })  : name = Value(name),
        motor = Value(motor),
        mileage = Value(mileage);
  static Insertable<Car> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? motor,
    Expression<int>? mileage,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (motor != null) 'motor': motor,
      if (mileage != null) 'mileage': mileage,
    });
  }

  CarsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? motor,
      Value<int>? mileage}) {
    return CarsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      motor: motor ?? this.motor,
      mileage: mileage ?? this.mileage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (motor.present) {
      map['motor'] = Variable<String>(motor.value);
    }
    if (mileage.present) {
      map['mileage'] = Variable<int>(mileage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CarsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('motor: $motor, ')
          ..write('mileage: $mileage')
          ..write(')'))
        .toString();
  }
}

class $PartsTable extends Parts with TableInfo<$PartsTable, CarPart> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PartsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _carIdMeta = const VerificationMeta('carId');
  @override
  late final GeneratedColumn<int> carId = GeneratedColumn<int>(
      'car_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES cars(id) ON DELETE CASCADE');
  static const VerificationMeta _detailDescriptionMeta =
      const VerificationMeta('detailDescription');
  @override
  late final GeneratedColumn<String> detailDescription =
      GeneratedColumn<String>('detail_description', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<int> price = GeneratedColumn<int>(
      'price', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _imagePathMeta =
      const VerificationMeta('imagePath');
  @override
  late final GeneratedColumn<String> imagePath = GeneratedColumn<String>(
      'image_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, carId, detailDescription, price, imagePath];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'parts';
  @override
  VerificationContext validateIntegrity(Insertable<CarPart> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('car_id')) {
      context.handle(
          _carIdMeta, carId.isAcceptableOrUnknown(data['car_id']!, _carIdMeta));
    } else if (isInserting) {
      context.missing(_carIdMeta);
    }
    if (data.containsKey('detail_description')) {
      context.handle(
          _detailDescriptionMeta,
          detailDescription.isAcceptableOrUnknown(
              data['detail_description']!, _detailDescriptionMeta));
    } else if (isInserting) {
      context.missing(_detailDescriptionMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path']!, _imagePathMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CarPart map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CarPart(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      carId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}car_id'])!,
      detailDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}detail_description'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}price'])!,
      imagePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_path']),
    );
  }

  @override
  $PartsTable createAlias(String alias) {
    return $PartsTable(attachedDatabase, alias);
  }
}

class CarPart extends DataClass implements Insertable<CarPart> {
  final int id;
  final int carId;
  final String detailDescription;
  final int price;
  final String? imagePath;
  const CarPart(
      {required this.id,
      required this.carId,
      required this.detailDescription,
      required this.price,
      this.imagePath});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['car_id'] = Variable<int>(carId);
    map['detail_description'] = Variable<String>(detailDescription);
    map['price'] = Variable<int>(price);
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    return map;
  }

  PartsCompanion toCompanion(bool nullToAbsent) {
    return PartsCompanion(
      id: Value(id),
      carId: Value(carId),
      detailDescription: Value(detailDescription),
      price: Value(price),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
    );
  }

  factory CarPart.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CarPart(
      id: serializer.fromJson<int>(json['id']),
      carId: serializer.fromJson<int>(json['carId']),
      detailDescription: serializer.fromJson<String>(json['detailDescription']),
      price: serializer.fromJson<int>(json['price']),
      imagePath: serializer.fromJson<String?>(json['imagePath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'carId': serializer.toJson<int>(carId),
      'detailDescription': serializer.toJson<String>(detailDescription),
      'price': serializer.toJson<int>(price),
      'imagePath': serializer.toJson<String?>(imagePath),
    };
  }

  CarPart copyWith(
          {int? id,
          int? carId,
          String? detailDescription,
          int? price,
          Value<String?> imagePath = const Value.absent()}) =>
      CarPart(
        id: id ?? this.id,
        carId: carId ?? this.carId,
        detailDescription: detailDescription ?? this.detailDescription,
        price: price ?? this.price,
        imagePath: imagePath.present ? imagePath.value : this.imagePath,
      );
  CarPart copyWithCompanion(PartsCompanion data) {
    return CarPart(
      id: data.id.present ? data.id.value : this.id,
      carId: data.carId.present ? data.carId.value : this.carId,
      detailDescription: data.detailDescription.present
          ? data.detailDescription.value
          : this.detailDescription,
      price: data.price.present ? data.price.value : this.price,
      imagePath: data.imagePath.present ? data.imagePath.value : this.imagePath,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CarPart(')
          ..write('id: $id, ')
          ..write('carId: $carId, ')
          ..write('detailDescription: $detailDescription, ')
          ..write('price: $price, ')
          ..write('imagePath: $imagePath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, carId, detailDescription, price, imagePath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CarPart &&
          other.id == this.id &&
          other.carId == this.carId &&
          other.detailDescription == this.detailDescription &&
          other.price == this.price &&
          other.imagePath == this.imagePath);
}

class PartsCompanion extends UpdateCompanion<CarPart> {
  final Value<int> id;
  final Value<int> carId;
  final Value<String> detailDescription;
  final Value<int> price;
  final Value<String?> imagePath;
  const PartsCompanion({
    this.id = const Value.absent(),
    this.carId = const Value.absent(),
    this.detailDescription = const Value.absent(),
    this.price = const Value.absent(),
    this.imagePath = const Value.absent(),
  });
  PartsCompanion.insert({
    this.id = const Value.absent(),
    required int carId,
    required String detailDescription,
    required int price,
    this.imagePath = const Value.absent(),
  })  : carId = Value(carId),
        detailDescription = Value(detailDescription),
        price = Value(price);
  static Insertable<CarPart> custom({
    Expression<int>? id,
    Expression<int>? carId,
    Expression<String>? detailDescription,
    Expression<int>? price,
    Expression<String>? imagePath,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (carId != null) 'car_id': carId,
      if (detailDescription != null) 'detail_description': detailDescription,
      if (price != null) 'price': price,
      if (imagePath != null) 'image_path': imagePath,
    });
  }

  PartsCompanion copyWith(
      {Value<int>? id,
      Value<int>? carId,
      Value<String>? detailDescription,
      Value<int>? price,
      Value<String?>? imagePath}) {
    return PartsCompanion(
      id: id ?? this.id,
      carId: carId ?? this.carId,
      detailDescription: detailDescription ?? this.detailDescription,
      price: price ?? this.price,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (carId.present) {
      map['car_id'] = Variable<int>(carId.value);
    }
    if (detailDescription.present) {
      map['detail_description'] = Variable<String>(detailDescription.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PartsCompanion(')
          ..write('id: $id, ')
          ..write('carId: $carId, ')
          ..write('detailDescription: $detailDescription, ')
          ..write('price: $price, ')
          ..write('imagePath: $imagePath')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CarsTable cars = $CarsTable(this);
  late final $PartsTable parts = $PartsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cars, parts];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('cars',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('parts', kind: UpdateKind.delete),
            ],
          ),
        ],
      );
}

typedef $$CarsTableCreateCompanionBuilder = CarsCompanion Function({
  Value<int> id,
  required String name,
  required String motor,
  required int mileage,
});
typedef $$CarsTableUpdateCompanionBuilder = CarsCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> motor,
  Value<int> mileage,
});

final class $$CarsTableReferences
    extends BaseReferences<_$AppDatabase, $CarsTable, Car> {
  $$CarsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PartsTable, List<CarPart>> _partsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.parts,
          aliasName: $_aliasNameGenerator(db.cars.id, db.parts.carId));

  $$PartsTableProcessedTableManager get partsRefs {
    final manager = $$PartsTableTableManager($_db, $_db.parts)
        .filter((f) => f.carId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_partsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CarsTableFilterComposer extends Composer<_$AppDatabase, $CarsTable> {
  $$CarsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get motor => $composableBuilder(
      column: $table.motor, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get mileage => $composableBuilder(
      column: $table.mileage, builder: (column) => ColumnFilters(column));

  Expression<bool> partsRefs(
      Expression<bool> Function($$PartsTableFilterComposer f) f) {
    final $$PartsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.parts,
        getReferencedColumn: (t) => t.carId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PartsTableFilterComposer(
              $db: $db,
              $table: $db.parts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CarsTableOrderingComposer extends Composer<_$AppDatabase, $CarsTable> {
  $$CarsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get motor => $composableBuilder(
      column: $table.motor, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get mileage => $composableBuilder(
      column: $table.mileage, builder: (column) => ColumnOrderings(column));
}

class $$CarsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CarsTable> {
  $$CarsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get motor =>
      $composableBuilder(column: $table.motor, builder: (column) => column);

  GeneratedColumn<int> get mileage =>
      $composableBuilder(column: $table.mileage, builder: (column) => column);

  Expression<T> partsRefs<T extends Object>(
      Expression<T> Function($$PartsTableAnnotationComposer a) f) {
    final $$PartsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.parts,
        getReferencedColumn: (t) => t.carId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PartsTableAnnotationComposer(
              $db: $db,
              $table: $db.parts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CarsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CarsTable,
    Car,
    $$CarsTableFilterComposer,
    $$CarsTableOrderingComposer,
    $$CarsTableAnnotationComposer,
    $$CarsTableCreateCompanionBuilder,
    $$CarsTableUpdateCompanionBuilder,
    (Car, $$CarsTableReferences),
    Car,
    PrefetchHooks Function({bool partsRefs})> {
  $$CarsTableTableManager(_$AppDatabase db, $CarsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CarsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CarsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CarsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> motor = const Value.absent(),
            Value<int> mileage = const Value.absent(),
          }) =>
              CarsCompanion(
            id: id,
            name: name,
            motor: motor,
            mileage: mileage,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String motor,
            required int mileage,
          }) =>
              CarsCompanion.insert(
            id: id,
            name: name,
            motor: motor,
            mileage: mileage,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$CarsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({partsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (partsRefs) db.parts],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (partsRefs)
                    await $_getPrefetchedData<Car, $CarsTable, CarPart>(
                        currentTable: table,
                        referencedTable:
                            $$CarsTableReferences._partsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CarsTableReferences(db, table, p0).partsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.carId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CarsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CarsTable,
    Car,
    $$CarsTableFilterComposer,
    $$CarsTableOrderingComposer,
    $$CarsTableAnnotationComposer,
    $$CarsTableCreateCompanionBuilder,
    $$CarsTableUpdateCompanionBuilder,
    (Car, $$CarsTableReferences),
    Car,
    PrefetchHooks Function({bool partsRefs})>;
typedef $$PartsTableCreateCompanionBuilder = PartsCompanion Function({
  Value<int> id,
  required int carId,
  required String detailDescription,
  required int price,
  Value<String?> imagePath,
});
typedef $$PartsTableUpdateCompanionBuilder = PartsCompanion Function({
  Value<int> id,
  Value<int> carId,
  Value<String> detailDescription,
  Value<int> price,
  Value<String?> imagePath,
});

final class $$PartsTableReferences
    extends BaseReferences<_$AppDatabase, $PartsTable, CarPart> {
  $$PartsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CarsTable _carIdTable(_$AppDatabase db) =>
      db.cars.createAlias($_aliasNameGenerator(db.parts.carId, db.cars.id));

  $$CarsTableProcessedTableManager get carId {
    final $_column = $_itemColumn<int>('car_id')!;

    final manager = $$CarsTableTableManager($_db, $_db.cars)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_carIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PartsTableFilterComposer extends Composer<_$AppDatabase, $PartsTable> {
  $$PartsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get detailDescription => $composableBuilder(
      column: $table.detailDescription,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imagePath => $composableBuilder(
      column: $table.imagePath, builder: (column) => ColumnFilters(column));

  $$CarsTableFilterComposer get carId {
    final $$CarsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.carId,
        referencedTable: $db.cars,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CarsTableFilterComposer(
              $db: $db,
              $table: $db.cars,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PartsTableOrderingComposer
    extends Composer<_$AppDatabase, $PartsTable> {
  $$PartsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get detailDescription => $composableBuilder(
      column: $table.detailDescription,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imagePath => $composableBuilder(
      column: $table.imagePath, builder: (column) => ColumnOrderings(column));

  $$CarsTableOrderingComposer get carId {
    final $$CarsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.carId,
        referencedTable: $db.cars,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CarsTableOrderingComposer(
              $db: $db,
              $table: $db.cars,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PartsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PartsTable> {
  $$PartsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get detailDescription => $composableBuilder(
      column: $table.detailDescription, builder: (column) => column);

  GeneratedColumn<int> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<String> get imagePath =>
      $composableBuilder(column: $table.imagePath, builder: (column) => column);

  $$CarsTableAnnotationComposer get carId {
    final $$CarsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.carId,
        referencedTable: $db.cars,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CarsTableAnnotationComposer(
              $db: $db,
              $table: $db.cars,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PartsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PartsTable,
    CarPart,
    $$PartsTableFilterComposer,
    $$PartsTableOrderingComposer,
    $$PartsTableAnnotationComposer,
    $$PartsTableCreateCompanionBuilder,
    $$PartsTableUpdateCompanionBuilder,
    (CarPart, $$PartsTableReferences),
    CarPart,
    PrefetchHooks Function({bool carId})> {
  $$PartsTableTableManager(_$AppDatabase db, $PartsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PartsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PartsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PartsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> carId = const Value.absent(),
            Value<String> detailDescription = const Value.absent(),
            Value<int> price = const Value.absent(),
            Value<String?> imagePath = const Value.absent(),
          }) =>
              PartsCompanion(
            id: id,
            carId: carId,
            detailDescription: detailDescription,
            price: price,
            imagePath: imagePath,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int carId,
            required String detailDescription,
            required int price,
            Value<String?> imagePath = const Value.absent(),
          }) =>
              PartsCompanion.insert(
            id: id,
            carId: carId,
            detailDescription: detailDescription,
            price: price,
            imagePath: imagePath,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$PartsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({carId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (carId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.carId,
                    referencedTable: $$PartsTableReferences._carIdTable(db),
                    referencedColumn: $$PartsTableReferences._carIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PartsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PartsTable,
    CarPart,
    $$PartsTableFilterComposer,
    $$PartsTableOrderingComposer,
    $$PartsTableAnnotationComposer,
    $$PartsTableCreateCompanionBuilder,
    $$PartsTableUpdateCompanionBuilder,
    (CarPart, $$PartsTableReferences),
    CarPart,
    PrefetchHooks Function({bool carId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CarsTableTableManager get cars => $$CarsTableTableManager(_db, _db.cars);
  $$PartsTableTableManager get parts =>
      $$PartsTableTableManager(_db, _db.parts);
}
