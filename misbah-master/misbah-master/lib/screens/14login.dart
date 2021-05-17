import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/screens/1home.dart';
import 'package:misbah/widgets/10customtextfield.dart';
import 'package:misbah/screens/13new-user.dart';
import '../widgets/0app_bar.dart';
import '../widgets/5gradient_button.dart';
import 'package:misbah/screens/15forget_password.dart';

class Login extends StatelessWidget {
  String email;
  String phone;
  String password;
  saveEmailorPhone(String value, String value2) {
    this.email = value;
    this.phone = value2;
  }

  savePasswrd(String value) {
    this.password = value;
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
        title: 'الدخول',
        image: 'assets/images/loginicon.png',
        onTap: () {
          Get.to(
            HomePage(),
          );
        },
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width: 142 / size.width * size.width,
                    height: 88 / size.height * size.height,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo.png'))),
                  ),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFieled(
                        labelName: 'رقم التلفون أو الإيميل* ',
                        saveFun: saveEmailorPhone,
                        validateFun: nullValidator,
                        keyboardType: TextInputType.emailAddress,
                        secure: false,
                      ),
                      CustomTextFieled(
                        labelName: 'كلمة السر* ',
                        saveFun: savePasswrd,
                        validateFun: nullValidator,
                        keyboardType: TextInputType.visiblePassword,
                        secure: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40 / size.height * size.height,
                ),
                Container(
                  width: 240 / size.width * size.width,
                  height: 48 / size.height * size.height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 2,
                    ),
                    child: GradientButton(
                      label: 'الدخول',
                      onTap: () {
                        saveForm();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50 / size.height * size.height,
          ),
          Container(
            width: 120 / size.width * size.width,
            height: 30 / size.height * size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    child: Text(
                      'سجل الآن  ',
                      style: TextStyle(
                          color: Color(0xff013668),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Get.to(
                        NewUser(),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    'جديد في مسباح ؟',
                    style: TextStyle(color: Color(0xff707070), fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Text(
                  'نسيت كلمة السر ؟',
                  style: TextStyle(
                      color: Color(0xff013668),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Get.to(
                    ForgetPassword(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
