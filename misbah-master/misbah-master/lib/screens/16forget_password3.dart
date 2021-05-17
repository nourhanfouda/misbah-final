import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/widgets/10customtextfield.dart';

import '../widgets/0app_bar.dart';
import '../widgets/5gradient_button.dart';
import 'package:misbah/screens/1home.dart';

class Forgetpassword3 extends StatelessWidget {
  String newPassword;
  String reNewPassword;
  saveNewPassword(String value) {
    this.newPassword = value;
  }

  saveReNewPassword(String value) {
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
        title: 'تغيير كلمة السر',
        image: 'assets/icons/back.png',
        onTap: () {
          Get.back();
        },
      ),
      body: Center(
        child: ListView(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 40 / size.height * size.height,
                  ),
                  CustomTextFieled(
                    labelName: 'كلمة السر الجديدة*',
                    saveFun: saveNewPassword,
                    validateFun: nullValidator,
                    keyboardType: TextInputType.phone,
                    secure: false,
                  ),
                  CustomTextFieled(
                    labelName: 'تأكيد كلمة السر*',
                    saveFun: saveReNewPassword,
                    validateFun: nullValidator,
                    keyboardType: TextInputType.phone,
                    secure: false,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20 / size.height * size.height,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: Container(
                width: 240 / size.width * size.width,
                height: 48 / size.height * size.height,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  child: GradientButton(
                    label: 'تحديث',
                    onTap: () {
                      saveForm();
                      if (newPassword == reNewPassword &&
                          newPassword != null &&
                          reNewPassword != null) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Container(
                                width: 62 / size.width * size.width,
                                height: 62 / size.height * size.height,
                                child:
                                    Image.asset('assets/images/greenicon.png')),
                            content: Text(
                              'تم تغيير كلمة السر بنجاح',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff32BA7C), fontSize: 26),
                            ),
                            actions: [
                              Container(),
                              Center(
                                child: SizedBox(
                                  width: 240 / size.width * size.width,
                                  height: 48 / size.height * size.height,
                                  child: GradientButton(
                                    label: 'تم',
                                    onTap: () {
                                      Get.to(
                                        HomePage(),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(),
                              Container(),
                              Container(),
                              Container(),
                              Container(),
                            ],
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
