import 'package:dbt/logic/controllers/employee_affairs_controller.dart';
import 'package:get/get.dart';

class EmployeeAffairsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EmployeeAffairsController());
  }
}
