import 'package:dashed_container/dashed_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:misbah/widgets/0app_bar.dart';
import 'package:misbah/widgets/5gradient_button.dart';
import 'package:misbah/widgets/6text_field.dart';
import 'package:misbah/widgets/7drop_menu.dart';

class NewAdd extends StatefulWidget {
  @override
  _NewAddState createState() => _NewAddState();
}

enum AdsType { Special, Normal }

class _NewAddState extends State<NewAdd> {
  AdsType adsType = AdsType.Normal;
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(
        title: 'إعلان جديد',
        image: 'assets/icons/back.png',
        onTap: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 33),
                child: Text(
                  'نوع الإعلان',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'عادي',
                        style: TextStyle(fontSize: 14),
                      ),
                      leading: Radio(
                        value: AdsType.Normal,
                        groupValue: adsType,
                        onChanged: (value) {
                          adsType = value;
                          setState(() {});
                        },
                      ),
                      trailing: Text(
                        'عدد الإعلانات المتبقية 5',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff217BC1)),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'مميز',
                        style: TextStyle(fontSize: 14),
                      ),
                      leading: Radio(
                        value: AdsType.Special,
                        groupValue: adsType,
                        onChanged: (value) {
                          adsType = value;
                          setState(() {});
                        },
                      ),
                      trailing: Text(
                        'عدد الإعلانات المتبقية 1',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff65EF60)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8 / size.height * size.height),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 145 / size.width * size.width,
                    height: 145 / size.height * size.height,
                    decoration: BoxDecoration(
                      color: Color(0xffDBCBCB),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.blue,
                            ),
                            onPressed: () {},
                          ),
                          Text(
                            'أضف صورة رئيسية',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            '''سيرى الناس هذه الصورة عند ظهور إعلانك
في نتائج البحث ''',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  DashedContainer(
                    child: Container(
                      width: 145 / size.width * size.width,
                      height: 145 / size.height * size.height,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset('assets/icons/gallery.png'),
                              onPressed: () {},
                            ),
                            Text(
                              'أضف (3) صور إضافية',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              '''قدم إعلانك بشكل أفضل للمشترين''',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ),
                    dashColor: Colors.black,
                    dashedLength: 10,
                    strokeWidth: 1,
                    borderRadius: 4,
                  ),
                ],
              ),
              SizedBox(
                height: 12 / size.height * size.height,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 33),
                child: Text(
                  'الوصف',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              SizedBox(
                height: 8 / size.height * size.height,
              ),
              MyTextField(
                label: 'العنوان',
              ),
              DropMenu(
                myMenu: ['select', 'test 1', 'test 2'],
                title: 'القسم',
                dropValue: 'select',
                onChanged: () {},
              ),
              DropMenu(
                myMenu: ['select', 'test 1', 'test 2'],
                title: 'النوع',
                dropValue: 'select',
                onChanged: () {},
              ),
              MyTextField(
                label: 'الوصف',
                minlines: 3,
              ),
              DropMenu(
                myMenu: ['select', 'test 1', 'test 2'],
                title: 'العملة',
                dropValue: 'select',
                onChanged: () {},
              ),
              MyTextField(
                label: 'السعر',
              ),
              SizedBox(
                height: 16 / size.height * size.height,
              ),
              Center(
                child: SizedBox(
                  width: 240 / size.width * size.width,
                  height: 48 / size.height * size.height,
                  child: GradientButton(
                    label: 'التالي',
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Container(
                              width: 62 / size.width * size.width,
                              height: 62 / size.height * size.height,
                              child:
                                  Image.asset('assets/images/greenicon.png')),
                          content: Text(
                            'تم الرفع بنجاح',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff346879), fontSize: 26),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 16 / size.height * size.height,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
