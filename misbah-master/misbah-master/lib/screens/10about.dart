import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/widgets/0app_bar.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(
        title: 'من نحن',
        image: 'assets/icons/back.png',
        onTap: () {
          Get.back();
        },
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40 / size.height * size.height,
            ),
            SizedBox(
              height: 110 / size.height * size.height,
              width: 160 / size.width * size.width,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 45),
              child: Text(
                msg,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

String msg =
    '''  هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق
''';
