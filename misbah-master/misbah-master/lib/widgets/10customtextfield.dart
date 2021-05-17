import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFieled extends StatelessWidget {
  Function saveFun;
  Function validateFun;
  String labelName;
  TextInputType keyboardType;
  bool secure = false;
  CustomTextFieled(
      {this.labelName,
      this.saveFun,
      this.validateFun,
      this.keyboardType,
      this.secure});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Container(
        width: 350 / size.width * size.width,
        height: 58 / size.height * size.height,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            onSaved: (value) {
              this.saveFun(value);
            },
            validator: (value) {
              return this.validateFun(value);
            },
            keyboardType: keyboardType,
            obscureText: secure,
            decoration: new InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              labelText: this.labelName,
            ),
          ),
        ),
      ),
    );
  }
}
