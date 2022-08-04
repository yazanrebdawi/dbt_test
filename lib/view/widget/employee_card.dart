import 'package:dbt/logic/controllers/employee_affairs_controller.dart';
import 'package:dbt/view/widget/mytext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeCard extends StatelessWidget {

  String name;
  String username;
  String email;
  String phone;
  String website;
  Function() onTap;

  EmployeeCard({Key? key, required this.name,required this.username,required this.email,
    required this.phone,required this.website,   required this.onTap,}) : super(key: key) {
  }
final controller = Get.find<EmployeeAffairsController>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 6),
      child: InkWell(onTap: onTap,
        child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 0,
            child:
                 Container(
                   height: size.height*0.13,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                              Icons.account_circle_outlined,
                              size: size.width*0.1,
                            ),
                      ),

                         Expanded(
                           flex:6 ,
                           child: Row(

                            children:[ Column(


                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(

                                    children: [
                                      Text('$name',
                                          style:const TextStyle(color: Colors.black,fontSize: 14)),
                                      Text('_'+'$username',
                                          style:const TextStyle(color: Colors.black45,fontSize: 14)), ],
                                  ),
                                ),
                                Row(

                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        controller.getEmployee();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)),
                                        primary: Colors.white38,
                                        minimumSize: const Size(10, 25),
                                      ),
                                      child: MyText(
                                        color: Colors.black54,
                                        text: 'منح إجازة',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        underLine: TextDecoration.none,
                                      ),
                                    ),
                                    SizedBox(width: 6),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)),
                                        primary: Colors.white38,
                                        minimumSize: const Size(10, 25),
                                      ),
                                      child: MyText(
                                        color: Colors.black54,
                                        text: 'خصم',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        underLine: TextDecoration.none,
                                      ),
                                    ),   SizedBox(width: 6),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)),
                                        primary: Colors.white38,
                                        minimumSize: const Size(50, 25),
                                      ),
                                      child: MyText(
                                        color: Colors.black54,
                                        text: 'إنهاء خدمة',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        underLine: TextDecoration.none,
                                      ),
                                    )
                                  ],
                                )

                              ],
                            ),
                        ]),
                         ),
                         Icon(Icons.info_rounded),


                     ],
                   ),
                 ),


        ),
      ),
    );
  }
}
