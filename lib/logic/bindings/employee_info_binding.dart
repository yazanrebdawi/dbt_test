import 'package:dbt/logic/controllers/employee_info_controller.dart';
import 'package:get/get.dart';

class EmployeeInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EmployeeInfoController());
  }
}
