import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ServisAPI {
  // lokasi api json file
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  // untuk mengambil value yang ada nanti, (terhalang jaringan , load time/ saat ini value belum ada ) maka pakai futire

  Future<List<dynamic>> fetchPosts() async {
    final response = await http.get(Uri.parse('$_baseUrl/photos'));
// karena manggunakan http, maka kita tangkap statuscode dari httpnya

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Load Gagal');
    }
  }
}
