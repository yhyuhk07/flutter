import 'dart:convert';
// import 'dart:html';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/model/dataDiri.dart';

class dataDiriService {
  Future <List<dataDiri>> getAll() async {
    const url = 'http://192.168.1.11:8000/api/dataDiri';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final datadiris = json.map((e) => DataDiri.fromJson(e));
      return datadiris;
    }
    return [];
  }
}