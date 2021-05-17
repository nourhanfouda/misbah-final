import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/widgets/0app_bar.dart';
import 'package:misbah/widgets/3adertise_widget.dart';
import 'package:misbah/widgets/5gradient_button.dart';

class AdvertiseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(
        title: 'تفاصيل الإعلان',
        image: 'assets/icons/back.png',
        onTap: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15, right: 15),
              child: Center(
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/sibha.png',
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      right: 10,
                      top: 5,
                      child: Icon(
                        CupertinoIcons.camera,
                        color: Color(0xff013668),
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5 / size.height * size.height,
            ),
            Center(
              child: DotsIndicator(
                dotsCount: 4,
                decorator: DotsDecorator(
                  color: Color(0xffBCA8A8), // Inactive color
                  activeColor: Color(0xff044770),
                ),
              ),
            ),
            Advertisewidgit(
              advertiseName: 'مسابيح',
              price: '500',
              phone: '0597589460',
              viwes: '500',
            ),
            SizedBox(
              height: 12 / size.height * size.height,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                'الوصف',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 12 / size.height * size.height,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                width: double.infinity,
                height: 130 / size.height * size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  child: Center(
                    child: Text(
                      '''هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من لنصوص الأخرى 
                    ''',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Expanded(
                      child: GradientButton(
                    label: 'SMS',
                    gradient: false,
                  )),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(
                      child: GradientButton(
                    label: 'اتصل الآن',
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
