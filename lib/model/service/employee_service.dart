import 'dart:convert';

import 'package:dbt/model/model/employee_model.dart';
import 'package:http/http.dart' as http;

class EmployeeServices {
  static Future<List<EmployeeModel>> getEmployee() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      print('sd');
      var jsonData = response.body;
 return employeeModelFromJson(jsonData);
      print(23);
    } else {
      return throw Exception("Failed to load User");
    }
  }
}
