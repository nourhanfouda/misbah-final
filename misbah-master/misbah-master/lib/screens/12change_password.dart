import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/0app_bar.dart';
import 'package:misbah/widgets/10customtextfield.dart';

import '../widgets/5gradient_button.dart';

class ChangePassword extends StatelessWidget {
  String password;
  String newPassword;
  String reNewPassword;

  savePassword(String value) {
    this.password = password;
  }

  savenewPassword(String value) {
    this.newPassword = value;
  }

  savereNewPassword(String value) {
    this.reNewPassword = value;
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
        title: 'تغيير كلمة المرور',
        image: 'assets/icons/back.png',
        onTap: () {
          Get.back();
        },
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                CustomTextFieled(
                  labelName: 'كلمة السر القديمة ',
                  saveFun: savePassword,
                  validateFun: nullValidator,
                  keyboardType: TextInputType.visiblePassword,
                  secure: true,
                ),
                CustomTextFieled(
                  labelName: 'كلمة السر الجديدة  ',
                  saveFun: savenewPassword,
                  validateFun: nullValidator,
                  keyboardType: TextInputType.visiblePassword,
                  secure: true,
                ),
                CustomTextFieled(
                  labelName: 'تأكيد كلمة السر',
                  saveFun: savereNewPassword,
                  validateFun: nullValidator,
                  keyboardType: TextInputType.visiblePassword,
                  secure: true,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100 / size.height * size.height,
          ),
          Container(
            width: 240 / size.width * size.width,
            height: 48 / size.height * size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: GradientButton(
                label: 'تحديث',
                onTap: () {
                  if (newPassword == reNewPassword) {
                    saveForm();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
