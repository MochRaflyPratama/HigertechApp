import 'package:get/get.dart';
import 'package:higertechapp/app/modules/home/binding/home_binding.dart';
import 'package:higertechapp/app/modules/home/view/home_view.dart';
import 'package:higertechapp/app/modules/station/binding/station_binding.dart';
import 'package:higertechapp/app/modules/station/view/station_view.dart';
import 'app_route.dart';

class AppPage {
  static final pages = [
    GetPage(name: AppRoute.home, page: () => HomeView(), binding: HomeBinding(), transition: Transition.rightToLeft),
    GetPage(name: AppRoute.stations, page: () => StationView(), binding: StationBinding(), transition: Transition.rightToLeft),
    // ... other routes
  ];
}
