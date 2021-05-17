import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/widgets/10customtextfield.dart';

import '../widgets/0app_bar.dart';
import '../widgets/5gradient_button.dart';
import 'package:misbah/screens/16forget_password3.dart';

class ForgetPassword2 extends StatelessWidget {
  String code;
  saveCode(String value) {
    this.code = value;
  }

  nullValidator(String value) {
    if (value == '' || value == null) {
      return 'required field';
    }
  }

  GlobalKey<FormState> formKey = GlobalKey();
  saveForm() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: MyAppBar(
        title: 'نسيت كلمة السر',
        image: 'assets/icons/back.png',
        onTap: () {
          Get.back();
        },
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 40),
                child: Container(
                  width: 142 / size.width * size.width,
                  height: 88 / size.height * size.height,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'))),
                ),
              ),
              Center(
                child: Text(
                  'يرجى إدخال رمز التحقق الذي تلقيته على هاتفك',
                  style: TextStyle(
                      color: Color(0xff013668),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30 / size.height * size.height,
              ),
              Form(
                key: formKey,
                child: CustomTextFieled(
                  labelName: 'الرمز*',
                  saveFun: saveCode,
                  validateFun: nullValidator,
                  keyboardType: TextInputType.phone,
                  secure: false,
                ),
              ),
              SizedBox(
                height: 20 / size.height * size.height,
              ),
              Container(
                width: 240 / size.width * size.width,
                height: 48 / size.height * size.height,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  child: GradientButton(
                    label: 'تفعيل',
                    onTap: () {
                      saveForm();
                      if (code != null)
                        Get.to(
                          Forgetpassword3(),
                        );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
