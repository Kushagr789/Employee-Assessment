//this provides a view model to Home screen using Provider package

import 'package:flutter/material.dart';

import '../model/DataModel.dart';
import '../services/FirebaseFetch.dart';

class EmployeeProvider with ChangeNotifier {
  final EmployeeService _employeeService = EmployeeService();
  List<Employee> _employees = [];
  bool _isLoading = true;

  EmployeeProvider() {
    _loadEmployees();
  }

  List<Employee> get employees => _employees;
  bool get isLoading => _isLoading;

  Future<void> _loadEmployees() async {

    _isLoading = true;
    _employees = await _employeeService.getAllEmployees();
    _isLoading = false;
    notifyListeners();
  }
}