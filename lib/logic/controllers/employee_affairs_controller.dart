import 'package:dbt/model/model/employee_model.dart';
import 'package:dbt/model/service/employee_service.dart';
import 'package:get/get.dart';

class EmployeeAffairsController extends GetxController {
var employeeList = <EmployeeModel>[].obs;
var isLoding =true.obs;
@override
  void onInit() {
    getEmployee();
    super.onInit();
  }
  void getEmployee()async{
  var employee=await EmployeeServices.getEmployee();
  try {
    isLoding(true);
    if (employee.isNotEmpty) {
      employeeList.addAll(employee);

    }
  } finally {
    isLoding(false);
  }
}


}
