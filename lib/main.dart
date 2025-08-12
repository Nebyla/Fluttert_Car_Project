import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:projectcar/present/car/bloc/carpart_bloc.dart';
import 'package:projectcar/present/car/pages/car_page.dart';
import 'package:projectcar/present/cars/cubit/car_cubit.dart';
import 'package:projectcar/present/setting/bloc/mileage_bloc.dart';
import 'package:projectcar/present/setting/map/notification_service.dart';
import 'package:projectcar/present/setting/page/setting.dart';
import 'package:projectcar/present/cars/pages/cars_list.dart';
import 'package:projectcar/present/obd/pages/obdtest.dart';
import 'package:projectcar/present/setting/repositories/settings_repositories.dart';
import 'package:projectcar/present/setting/theme/cubit/theme_cubit.dart';
import 'package:projectcar/present/setting/theme/page/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:projectcar/data/drift.dart'; // Импортируем базу данных
import 'package:projectcar/present/cars/bloc/car_bloc.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.init();
  final prefs = await SharedPreferences.getInstance();
  final database = AppDatabase(); // Создаём экземпляр базы данных
  runApp(MyApp(preferences: prefs, database: database));
}

enum AppRoute {
  cars,
  car,
  settings,
  obd,
  profile,
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.preferences, required this.database});
  final SharedPreferences preferences;
  final AppDatabase database;


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = GoRouter(
      initialLocation: '/cars',
      navigatorKey: navigatorKey,
      routes: <RouteBase>[
        GoRoute(
          path: '/cars',
          name: AppRoute.cars.name,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: CarsList(database: widget.database), // Передаём database
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: '/car/:id', // Dynamic path parameter
          name: AppRoute.car.name,
          pageBuilder: (context, state) {
            final String carId = state.pathParameters['id'] ?? '0'; // ✅ Default ID
            final String carName = state.uri.queryParameters['name'] ?? 'Автомобиль'; // ✅ Default Name

            return CustomTransitionPage<void>(
              key: state.pageKey,
              child: CarPage(carId: carId, carName: carName), // ✅ Pass Parameters
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),

        GoRoute(
          path: '/obd',
          name: AppRoute.obd.name,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: ObdPage(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: '/settings/:id',
          name: AppRoute.settings.name,
          pageBuilder: (context, state) {
            final String carId = state.pathParameters['id'] ?? '0';

            return CustomTransitionPage<void>(
              key: state.pageKey,
              child: SettingsPage(carId: carId), // 👈 передаём только carId
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final settingsRepository = SettingsRepository(preferences: widget.preferences);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit(settingsRepository: settingsRepository)),
        BlocProvider(create: (context) => CarBloc(database: widget.database)..add(const CarEvent.fetchCars())),
        BlocProvider(create: (context) => PartsBloc(database: widget.database)),
        BlocProvider(create: (context) => CarCubit()),
        BlocProvider(create: (context) => MileageBloc(database: widget.database)),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: state.isDark ? darkTheme : lightTheme,
            routerConfig: _router,
          );
        },
      ),
    );
  }
}