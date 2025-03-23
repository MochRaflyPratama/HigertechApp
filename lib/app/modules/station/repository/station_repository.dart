import 'package:higertechapp/app/modules/station/model/station_model.dart';
import 'package:higertechapp/app/service/api_service.dart';

class StationRepository {
  final ApiService _apiService = ApiService();

  Future<List<StationModel>> fetchStationList() async {
    final response = await _apiService.getRequest('station/All'); // pastikan endpoint-nya benar

    if (response.isSuccess && response.data is List) {
      return (response.data as List).map((json) => StationModel.fromJson(json)).toList();
    } else {
      throw Exception(response.message);
    }
  }
}
