import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:higertechapp/app/modules/home/controller/home_controller.dart';
import 'package:higertechapp/app/modules/home/view/widget/station_grid_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), backgroundColor: Colors.blueAccent, foregroundColor: Colors.white),
      body: GetBuilder<HomeController>(
        builder: (ctrl) {
          if (ctrl.status.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (ctrl.status.isError) {
            return Center(child: Text('Error: ${ctrl.status.errorMessage}'));
          }

          if (ctrl.status.isEmpty) {
            return const Center(child: Text('No stations found'));
          }

          return StationOverviewList(data: ctrl.countStation);
        },
      ),
    );
  }
}
