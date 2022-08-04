import 'package:flutter/material.dart';

class MyTextFromField extends StatelessWidget {
  final double mywidth;
  final Function validator;
  final String hintText;
  final String initialValue;
  const MyTextFromField({
    required this.mywidth,
    required this.validator,
    required this.hintText,   required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: mywidth,
      child: TextFormField(cursorColor:Colors.orange,
        initialValue:initialValue ,
        autofocus: true,
        keyboardType: TextInputType.text,
        validator: (value) => validator(value),
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          fillColor: Colors.grey.shade200,
          hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
