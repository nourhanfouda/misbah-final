import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/widgets/0app_bar.dart';
import 'package:misbah/widgets/5gradient_button.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyAppBar(
        title: 'اتصل بنا',
        image: 'assets/icons/back.png',
        onTap: () {
          Get.back();
        },
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              SizedBox(
                height: 25 / size.height * size.height,
              ),
              buildTile(
                title: 'البريد الإلكتروني',
                icon: 'assets/icons/msg.png',
              ),
              buildTile(
                title: '251487 (الإدارة)',
                icon: 'assets/icons/phone.png',
              ),
              buildTile(
                title: '251487 (الدعم الفني)',
                icon: 'assets/icons/phone.png',
              ),
              SizedBox(
                height: 40 / size.height * size.height,
              ),
              SizedBox(
                width: 240 / size.width * size.width,
                height: 50 / size.height * size.height,
                child: GradientButton(
                  label: 'إرسال تذكرة تواصل',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        backgroundColor: Colors.transparent,
                        insetPadding: EdgeInsets.all(30),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: SingleChildScrollView(
                            child: Container(
                              width: double.infinity,
                              height: 500 / size.height * size.height,
                              color: Color(0xffF7F7F7),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  buildTextField(
                                      icon: Icons.person_outline,
                                      labelText: 'الاسم'),
                                  buildTextField(
                                      icon: Icons.mail_outline_rounded,
                                      labelText: 'البريد الإلكتروني'),
                                  buildTextField(
                                      icon: Icons.phone_outlined,
                                      labelText: 'رقم الهاتف'),
                                  buildTextField(
                                      icon: null,
                                      labelText: 'الرسالة',
                                      lines: 4),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 240 / size.width * size.width,
                                    height: 50 / size.height * size.height,
                                    child: GradientButton(
                                      label: 'إرسال',
                                      onTap: () {
                                        Navigator.pop(context);
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: Container(
                                                width: 62 /
                                                    size.width *
                                                    size.width,
                                                height: 62 /
                                                    size.height *
                                                    size.height,
                                                child: Image.asset(
                                                    'assets/images/greenicon.png')),
                                            content: Text(
                                              'تم الإرسال بنجاح',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color(0xff232323),
                                                  fontSize: 26),
                                            ),
                                            actions: [
                                              Container(),
                                              Center(
                                                child: SizedBox(
                                                  width: 240 /
                                                      size.width *
                                                      size.width,
                                                  height: 48 /
                                                      size.height *
                                                      size.height,
                                                  child: GradientButton(
                                                    label: 'تم',
                                                    onTap: () {
                                                      Get.back();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Container(),
                                              Container(),
                                              Container(),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildContainer(icon: 'assets/icons/whats.png'),
                        buildContainer(icon: 'assets/icons/insta.png'),
                        buildContainer(icon: 'assets/icons/twitt.png'),
                      ],
                    ),
                    SizedBox(
                      height: 20 / size.height * size.height,
                    ),
                    Text('الشروط والأحكام')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildTile({String title, String icon, Function onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6), side: BorderSide.none),
        child: ListTile(
          tileColor: Color(0xffECEBEB),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          leading: Image.asset(
            icon,
          ),
        ),
      ),
    ),
  );
}

Widget buildContainer({String icon, Function onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 40,
      height: 40,
      child: Image.asset(
        icon,
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
    ),
  );
}

Widget buildTextField({IconData icon, String labelText, int lines}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: TextField(
      maxLines: lines,
      decoration: InputDecoration(
        hintText: labelText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
            backgroundColor:
                icon != null ? Color(0xffFAFAFA) : Colors.transparent,
            child: Icon(
              icon,
              color: Color(0xff949494),
            ),
          ),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}
