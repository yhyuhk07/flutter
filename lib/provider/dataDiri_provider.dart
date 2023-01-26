import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/dataDiri.dart';
import 'package:flutter_application_1/services/dataDiri_services.dart';

class dataDiriProvider extends ChangeNotifier {
  final _service = dataDiriService();
  bool isLoading = false;

  List<dataDiri> _datadiris = [];
  List<dataDiri> get datadiris => _datadiris;

  Future<void> getAlldataDiris() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.getAll();

    _datadiris = response;
    isLoading = false;
    notifyListeners();
  }
}