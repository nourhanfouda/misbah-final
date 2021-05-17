import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/widgets/10customtextfield.dart';
import '../widgets/0app_bar.dart';
import '../widgets/5gradient_button.dart';
import 'package:misbah/screens/12change_password.dart';

class EditProfile extends StatelessWidget {
  String userName;
  String email;
  String mobile;
  saveuserName(String value) {
    this.userName = value;
  }

  saveEmail(String value) {
    this.email = value;
  }

  saveMobile(String value) {
    this.mobile = value;
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
          title: 'تعديل الملف الشخصي',
          image: 'assets/icons/back.png',
          onTap: () {
            Get.back();
          },
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 150),
            child: Container(
                width: 113 / size.width * size.width,
                height: 113 / size.height * size.height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 0.5],
                    colors: [
                      Color(0xff4161BB).withOpacity(0.3),
                      Color(0xff4161BB).withOpacity(0.3),
                    ],
                  ),
                ),
                child: GestureDetector(
                  child: Image.asset(
                    'assets/icons/camera.png',
                    alignment: Alignment.bottomRight,
                  ),
                  onTap: () {},
                )),
          ),
          Form(
            key: formKey,
            child: Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CustomTextFieled(
                      labelName: 'الإسم ',
                      saveFun: saveuserName,
                      validateFun: nullValidator,
                      keyboardType: TextInputType.name,
                      secure: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CustomTextFieled(
                      labelName: 'البريد الإلكتروني ',
                      saveFun: saveEmail,
                      validateFun: nullValidator,
                      keyboardType: TextInputType.emailAddress,
                      secure: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CustomTextFieled(
                      labelName: 'رقم التلفون ',
                      saveFun: saveMobile,
                      validateFun: nullValidator,
                      keyboardType: TextInputType.phone,
                      secure: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50, top: 20),
              child: Text(
                'هل تريد تغيير كلمة المرور ؟ ',
                style: TextStyle(
                  color: Color(0xffF9011B),
                  fontSize: 17,
                  fontWeight: FontWeight.values[8],
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            onTap: () {
              Get.to(
                ChangePassword(),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Container(
              width: 240 / size.width * size.width,
              height: 48 / size.height * size.height,
              child: GradientButton(
                label: 'تحديث الملف الشخصي',
                onTap: () {
                  saveForm();
                },
              ),
            ),
          ),
        ]));
  }
}
