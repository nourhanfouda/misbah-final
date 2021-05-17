import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/0app_bar.dart';
import 'package:misbah/widgets/10customtextfield.dart';

import '../widgets/5gradient_button.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  String userName;

  String mobile;

  String email;

  String password;

  String rePassword;

  bool newvalue = false;

  saveuserName(String value) {
    this.userName = value;
  }

  saveMobile(String value) {
    this.mobile = value;
  }

  saveEmail(String value) {
    this.email = value;
  }

  savePassword(String value) {
    this.password = value;
  }

  saverePassword(String value) {
    this.rePassword = value;
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
        title: ' تسجيل المستخدم',
        image: 'assets/icons/back.png',
        onTap: () {
          Get.back();
        },
      ),
      body: ListView(
        children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                CustomTextFieled(
                  labelName: '*الاسم ',
                  saveFun: saveuserName,
                  validateFun: nullValidator,
                  keyboardType: TextInputType.name,
                  secure: false,
                ),
                CustomTextFieled(
                  labelName: 'رقم التلفون* ',
                  saveFun: saveMobile,
                  validateFun: nullValidator,
                  keyboardType: TextInputType.phone,
                  secure: false,
                ),
                CustomTextFieled(
                  labelName: 'البريد الإلكتروني* ',
                  saveFun: saveEmail,
                  validateFun: nullValidator,
                  keyboardType: TextInputType.emailAddress,
                  secure: false,
                ),
                CustomTextFieled(
                  labelName: 'كلمة السر *',
                  saveFun: savePassword,
                  validateFun: nullValidator,
                  keyboardType: TextInputType.visiblePassword,
                  secure: true,
                ),
                CustomTextFieled(
                  labelName: 'تأكيد كلمة السر*',
                  saveFun: saverePassword,
                  validateFun: nullValidator,
                  keyboardType: TextInputType.visiblePassword,
                  secure: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Text(
                          'الشروط الأحكام',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff217BC1),
                              fontSize: 13),
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Container(
                                color: Color(0xff707070),
                                width: double.infinity,
                                height: 37 / size.height * size.height,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 90, right: 20),
                                      child: Text(
                                        'الشروط والأحكام',
                                        style: TextStyle(
                                            color: Color(0xff3B3A3A),
                                            fontSize: 19),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Image.asset(
                                        'assets/images/close.png',
                                      ),
                                      onTap: () {
                                        Get.back();
                                      },
                                    )
                                  ],
                                ),
                              ),
                              content: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Text(
                                  cond,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff0F1010), fontSize: 14),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      Checkbox(
                        value: newvalue,
                        onChanged: (bool newValue) {
                          setState(() {
                            newvalue = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 30),
            child: Container(
              width: 240 / size.width * size.width,
              height: 48 / size.height * size.height,
              child: GradientButton(
                label: 'سجل الآن',
                onTap: () {
                  saveForm();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String cond =
    '''هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى 
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى 
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.

''';
