

import 'package:dbt/logic/controllers/employee_affairs_controller.dart';
import 'package:dbt/view/screen/employee_info.dart';
import 'package:dbt/view/widget/employee_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';

class EmployeeAffairs extends StatelessWidget {
  EmployeeAffairs({Key? key}) : super(key: key);
  final controller = Get.find<EmployeeAffairsController>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "شؤون الموظفين",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: mybackgroundColor,
          actions: [
            IconButton(
              onPressed: () {
                Get.to(()=>EmployeeInfo(employeeModel: controller.employeeList[1]));
              },
              icon: const Icon(
                Icons.add_circle_sharp,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ],
        ),
        backgroundColor: mybackgroundColor,
        body:  Obx((){
    if (controller.isLoding.value) {
    return const Center(
    child: CircularProgressIndicator(
color: Colors.orange,
    ),
    );
    }
    else{ return   ListView.builder(
    itemCount: controller.employeeList.length,

    itemBuilder: (BuildContext context, int index) {
    return  InkWell(

      child: EmployeeCard(
        name: controller.employeeList[index].name,
        username:  controller.employeeList[index].username,
        email:  controller.employeeList[index].email,
        phone:  controller.employeeList[index].phone,
        website:  controller.employeeList[index].website,
        onTap: (){
          Get.to(EmployeeInfo(employeeModel: controller.employeeList[index]));
        },
      ),
    );
    },
    );
    }})
      ) );
  }
}


