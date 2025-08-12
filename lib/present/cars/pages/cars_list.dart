import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectcar/core/ui/ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../main.dart';
import '../bloc/car_bloc.dart';
import '../../../data/drift.dart';
import '../cubit/car_cubit.dart' as cubit;
import 'package:flutter_slidable/flutter_slidable.dart';

class CarsList extends StatelessWidget {
  final AppDatabase database;

  CarsList({Key? key, required this.database}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CarBloc(database: database)..add(const CarEvent.fetchCars()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.directions_car, color: Colors.white, size: 28),
              SizedBox(width: 8),
              Text(
                "Мои автомобили",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
          ),
        ),
        body: BlocBuilder<CarBloc, CarState>(
          builder: (context, state) {
            return state.when(
              idle: (_) => Center(child: Text("Загрузка...")),
              loading: (_) => Center(child: CircularProgressIndicator()),
              successLoading: (cars) {
                if (cars.isEmpty) {
                  return Center(
                      child: Text("Пока нет добавленных автомобилей"));
                }
                 return ListView.builder(
                  itemCount: cars.length,
                  itemBuilder: (context, index) {
                    final car = cars[index];
                    return Slidable(
                      key: Key(car.id.toString()),
                      // действия при свайпе вправо
                      startActionPane: ActionPane(
                        motion: const DrawerMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (_) {
                              AwesomeDialog(
                                context: context,
                                animType: AnimType.scale,
                                dialogType: DialogType.noHeader,
                                keyboardAware: true,
                                body: DialogEditCar(car: car),
                              ).show();
                            },
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            icon: Icons.edit,
                            label: 'Изменить',
                          ),
                        ],
                      ),
                      // действия при свайпе влево
                      endActionPane: ActionPane(
                        motion: const DrawerMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (_) {
                              context.read<CarBloc>().add(
                                  CarEvent.deleteCar(id: car.id));
                            },
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Удалить',
                          ),
                        ],
                      ),
                      child: Card(
                        margin: EdgeInsets.all(10),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: Icon(Icons.directions_car, size: 40,
                              color: Colors.blue),
                          title: Text(car.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 4),
                              Text("Литраж: ${car.motor} л"),
                              Text("Пробег: ${car.mileage} км"),
                            ],
                          ),
                          trailing: Icon(Icons.chevron_right),
                          onTap: () {
                            context.read<cubit.CarCubit>().selectCar(
                                car.id.toString(), car.name);
                            context.goNamed(
                              AppRoute.car.name,
                              pathParameters: {'id': car.id?.toString() ?? '0'},
                              queryParameters: {'name': car.name},
                            );
                          },
                        ),
                      ),

                    );
                  },
                );
              },
              error: (_, message) => Center(child: Text("Ошибка: $message")),
            );
          },
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 5.0, bottom: 5.0),
          child: DialogAddCar(),
        ),
      ),
    );
  }
}
