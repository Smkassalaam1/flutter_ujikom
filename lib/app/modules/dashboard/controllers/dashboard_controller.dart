// ignore_for_file: unnecessary_overrides
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../data/entertainment_response.dart';
import '../../../data/headline_response.dart';
import '../../../data/sports_response.dart';
import '../../../data/technology_response.dart';
import '../../../utils/api.dart';
import 'dart:convert';

class DashboardController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<HeadlineResponse> getHeadline() async {
    final response = await http.get(Uri.parse(BaseUrl.headline));
    if (response.statusCode == 200) {
      return HeadlineResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Gagal Load Data');
    }
  }

  Future<TechnologyResponse> getTechnology() async {
    final response = await http.get(Uri.parse(BaseUrl.technology));
    if (response.statusCode == 200) {
      return TechnologyResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Gagal Load Data');
    }
  }

  Future<SportsResponse> getSports() async {
    final response = await http.get(Uri.parse(BaseUrl.sports));
    if (response.statusCode == 200) {
      return SportsResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Gagal Load Data');
    }
  }

  Future<EntertainmentResponse> getEntertainment() async {
    final response = await http.get(Uri.parse(BaseUrl.entertainment));
    if (response.statusCode == 200) {
      return EntertainmentResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Gagal Load Data');
    }
  }
}
