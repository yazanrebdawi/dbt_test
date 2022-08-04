import 'package:dbt/logic/bindings/employee_affairs_binding.dart';
import 'package:dbt/logic/bindings/employee_info_binding.dart';
import 'package:dbt/view/screen/employee_affairs.dart';
import 'package:dbt/view/screen/employee_info.dart';
import 'package:get/get.dart';

class AppRoutes {
  //initialRoute

  static const employeeAffairs = Routes.employeeAffairs;

  //getPages

  static final routes = [
    GetPage(
      name: Routes.employeeAffairs,
      page: () => EmployeeAffairs(),
      binding: EmployeeAffairsBinding(),
    ),

  ];
}

class Routes {
  static const employeeAffairs = '/employeeAffairs';
  static const employeeInfo = '/employeeInfo';
}
