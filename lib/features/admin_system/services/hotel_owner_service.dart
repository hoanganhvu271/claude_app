import 'dart:convert';
import 'package:hotel_app/common/utils/api_constants.dart';
import 'package:hotel_app/features/admin_system/model/hotel_owner_list.dart';
import 'package:http/http.dart' as http;

class HotelService {
  final String baseUrl = "${ApiConstants.baseUrl}/api/hotel";

  Future<List<Hotel>> fetchHotelsByUserId(int userId) async {
    final response = await http.get(Uri.parse('$baseUrl/user/$userId'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((item) => Hotel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load hotels');
    }
  }
}
