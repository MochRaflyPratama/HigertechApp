import 'package:get/get.dart';
import 'package:higertechapp/app/modules/station/controller/station_controller.dart';

class StationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StationController>(() => StationController());
  }
}
