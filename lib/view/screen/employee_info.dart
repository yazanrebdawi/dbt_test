import 'package:dbt/constant.dart';
import 'package:dbt/logic/controllers/employee_affairs_controller.dart';
import 'package:dbt/model/model/employee_model.dart';

import 'package:dbt/view/widget/mytext.dart';
import 'package:dbt/view/widget/text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeInfo extends StatelessWidget {
  // final controller = Get.find<EmployeeAffairsController>();
final EmployeeModel employeeModel;
  EmployeeInfo({required this.employeeModel,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(top: false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "معلومات الموظف",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: mybackgroundColor,
          actions: [
            IconButton(
              onPressed: () {Get.back();},
              icon: const Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: mybackgroundColor,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                height: 120,
                width: 120,
                child: Stack(
                  fit: StackFit.passthrough,
                  clipBehavior: Clip.none,
                  children: [
                    const CircleAvatar(

                      backgroundColor: Colors.white,
                      backgroundImage: null,
                    ),
                    Positioned(
                      right: -8,
                      bottom: 0,
                      child: SizedBox(
                        height: 46,
                        width: 46,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: const BorderSide(color: Colors.white),
                            ),
                            primary: Colors.white,
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            // controller.goimagePicker(context);
                          },
                          child: const Icon(Icons.edit),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    text: 'المعلومات الشخصية',
                    color: Colors.black,
                    underLine: TextDecoration.none),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            text: 'الاسم',
                            color: Colors.black45,
                            underLine: TextDecoration.none),
                        MyTextFromField(
                          initialValue: employeeModel.name,
                            mywidth: size.width * 0.4,
                            validator: () {},
                            hintText: 'اسم الموظف'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            text: 'الكنية',
                            color: Colors.black45,
                            underLine: TextDecoration.none),
                        MyTextFromField(
                            initialValue: employeeModel.username,
                            mywidth: size.width * 0.4,
                            validator: () {},
                            hintText: 'الكنية '),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            text: 'اسم الأب',
                            color: Colors.black45,
                            underLine: TextDecoration.none),
                        MyTextFromField(
                          initialValue: '',
                            mywidth: size.width * 0.4,
                            validator: () {},
                            hintText: 'اسم الأب'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            text: 'اسم الأم',
                            color: Colors.black45,
                            underLine: TextDecoration.none),
                        MyTextFromField(
                          initialValue: '',
                            mywidth: size.width * 0.4,
                            validator: () {},
                            hintText: ' الأم '),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            text: 'تاريخ الولادة',
                            color: Colors.black45,
                            underLine: TextDecoration.none),
                        MyTextFromField(
                          initialValue: '',
                            mywidth: size.width * 0.4,
                            validator: () {},
                            hintText: 'تاريخ الولادة'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                MyText(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    text: 'معلومات التواصل',
                    color: Colors.black,
                    underLine: TextDecoration.none),
                MyText(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    text: 'رقم الموبايل',
                    color: Colors.black45,
                    underLine: TextDecoration.none),
                MyTextFromField
                  (
                  initialValue: employeeModel.phone,
                    mywidth: size.width * 0.9,
                    validator: () {},
                    hintText: 'رقم الموبايل'),
                const SizedBox(
                  height: 10,
                ),
                MyText(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    text: 'العنوان',
                    color: Colors.black45,
                    underLine: TextDecoration.none),
                MyTextFromField(
                  initialValue: employeeModel.email,
                    mywidth: size.width * 0.9,
                    validator: () {},
                    hintText: 'العنوان'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: Colors.orange,
                    minimumSize: const Size(120, 30),
                  ),
                  child: MyText(
                    color: Colors.white,
                    text: 'حفظ',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    underLine: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
