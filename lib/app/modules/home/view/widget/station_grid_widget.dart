import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:higertechapp/app/modules/home/model/count_station_model.dart';
import 'package:higertechapp/app/routes/app_route.dart';

class StationOverviewList extends StatelessWidget {
  final CountStationModel data;

  const StationOverviewList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final items = [
      _ItemData('Total Pos', data.totalStation, Colors.lightBlue.shade100),
      _ItemData('Pos Online', data.online, Colors.lightGreen.shade200),
      _ItemData('Pos Offline', data.offline, Colors.red.shade100),
      _ItemData('Total Instansi', data.totalOrganization, Colors.grey.shade200),
      _ItemData('AWLR', data.totalAwlr, Colors.grey.shade200),
      _ItemData('ARR', data.totalArr, Colors.grey.shade200),
      _ItemData('AWS', data.totalAws, Colors.grey.shade200),
      _ItemData('AWLR & ARR', data.totalAwlrArr, Colors.grey.shade200),
      _ItemData('VNotch', data.totalVNotch, Colors.grey.shade200),
      _ItemData('FM', data.totalFM, Colors.grey.shade200),
      _ItemData('AVWR', data.totalAVWR, Colors.grey.shade200),
      _ItemData('WQ', data.totalWQ, Colors.grey.shade200),
    ];

    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: items.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () {
            // Tambahkan aksi kalau diperlukan, misalnya print:
            Get.toNamed(AppRoute.stations);
          },
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(color: item.color, borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Expanded(child: Text(item.label, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.black45))),
                Text(item.value.toString(), style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.black45)),
                const SizedBox(width: 8),
                const Icon(Icons.chevron_right, color: Colors.black45),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ItemData {
  final String label;
  final int value;
  final Color color;

  _ItemData(this.label, this.value, this.color);
}
