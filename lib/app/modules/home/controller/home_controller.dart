import 'package:get/get.dart';
import 'package:higertechapp/app/modules/home/repository/home_repository.dart';
import 'package:higertechapp/app/modules/station/model/station_model.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  final HomeRepository _repository = HomeRepository();
  final List<StationModel> stations = [];

  @override
  void onInit() {
    super.onInit();
    fetchStations();
  }

   void fetchStations() async {
    change(null, status: RxStatus.loading());

    try {
      final data = await _repository.fetchStationList();
      stations.clear();
      stations.addAll(data);

      change(null, status: data.isEmpty ? RxStatus.empty() : RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }

    update(); // untuk GetBuilder
  }
}