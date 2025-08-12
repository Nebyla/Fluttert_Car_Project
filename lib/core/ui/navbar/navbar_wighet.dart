part of '../ui.dart';

class MyNavigationBar extends StatefulWidget {
  final int? selectIndex;
  const MyNavigationBar({super.key, this.selectIndex});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  final iconList = <IconData>[
    Icons.home,
    Icons.directions_car,
    Icons.person,
    Icons.online_prediction,
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      itemCount: iconList.length,
      tabBuilder: (int index, bool isActive) {
        final color = isActive ? Colors.red : context.read<ThemeCubit>().state.brightness == Brightness.dark ? Colors.white : Colors.black;
        final size = isActive ? 36.0 : 24.0;
        return Icon(
          iconList[index],
          size: size,
          color: color,
        );
      },
      activeIndex: widget.selectIndex ?? 0,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      backgroundColor: context.read<ThemeCubit>().state.brightness == Brightness.dark ? Colors.black : Colors.white,
      onTap: (index) {
        final carState = context.read<CarCubit>().state;
        if (index == 0) {
          if (carState.carId.isNotEmpty) {
            context.goNamed(
              AppRoute.car.name,
              pathParameters: {'id': carState.carId}, // ✅ Ensure id is always passed
              queryParameters: {'name': carState.carName},
            );
          } else {
            print("❌ Error: No car selected");
          }
        }
        else if (index == 1) {
          final carState = context.read<CarCubit>().state;
          if (carState.carId.isNotEmpty) {
            context.goNamed(
              AppRoute.settings.name,
              pathParameters: {'id': carState.carId},
            );
          } else {
            print("❌ Error: No car selected");
          }
        }
        else if (index == 2) {
          context.goNamed(AppRoute.cars.name);
        }
        else if (index == 3) {
          context.goNamed(AppRoute.obd.name);
        }
      },
    );
  }
}