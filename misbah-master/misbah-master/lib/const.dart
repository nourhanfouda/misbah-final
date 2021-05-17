import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/screens/14login.dart';

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xff135285),
    Color(0xff135285),
    Color(0xff022B4B),
  ],
).createShader(
  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);

List<Widget> myWidgets(Size size) {
  return [
    SizedBox(
      width: 18,
    ),
    GestureDetector(
      child: Image.asset('assets/icons/add.png'),
      onTap: () {
        Get.to(Login());
      },
    ),
    SizedBox(
      width: 5 / size.width * size.width,
    ),
    SizedBox(
      width: 245 / 360 * size.width,
      height: 40 / 760 * size.height,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          cursorColor: Colors.black,
          cursorHeight: 16,
          decoration: InputDecoration(
            prefixIcon: Icon(
              CupertinoIcons.search,
              size: 24,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
            hintText: 'البحث',
            hintStyle: TextStyle(fontSize: 12),
            fillColor: Color(0xffF1F1F1),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    ),
    SizedBox(
      width: 14,
    ),
    Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          Scaffold.of(context).openEndDrawer();
        },
        child: Icon(
          Icons.menu,
          size: 30,
          color: Colors.white,
        ),
      ),
    )
  ];
}

List<String> drawerTile = [
  'الرئيسية',
  'إعلان جديد',
  'إعلاناتي',
  'قائمة المفضلة',
  'شراء الباقة',
  'تعديل الملف الشخصي',
  'اتصل بنا',
  'من نحن',
  'مشاركة التطبيق',
  'تسجيل خروج',
];

List<String> drawerIcons = [
  'assets/icons/1.png',
  'assets/icons/2.png',
  'assets/icons/3.png',
  'assets/icons/4.png',
  'assets/icons/5.png',
  'assets/icons/6.png',
  'assets/icons/7.png',
  'assets/icons/8.png',
  'assets/icons/9.png',
  'assets/icons/10.png',
];
enum misbahtype { misbah, ring, accessory, stones }
