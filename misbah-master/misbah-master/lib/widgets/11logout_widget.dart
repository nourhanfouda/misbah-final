import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/screens/14login.dart';

class LogoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Align(
        alignment: Alignment.center,
        child: Container(
          width: 292 / size.width * size.width,
          height: 157 / size.height * size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: new LinearGradient(
              colors: [
                Color(0xff135285),
                Color(0xff135285),
                Color(0xff022B4B),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30 / size.height * size.height,
                ),
                Text(
                  'هل تود تسجيل الخروج من حسابك ؟',
                  style: TextStyle(
                    color: Color(0xffF7F7F7),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30 / size.height * size.height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 88 / size.width * size.width,
                      // height: 31 * size.height * size.height,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          'لا',
                          style: TextStyle(color: Color(0xff013668)),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xffF7F7F7),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 88 / size.width * size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(
                            Login(),
                          );
                        },
                        child: Text(
                          'نعم',
                          style: TextStyle(color: Color(0xffF7F7F7)),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff0A0A0A),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
