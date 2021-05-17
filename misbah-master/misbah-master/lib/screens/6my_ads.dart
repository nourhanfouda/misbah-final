import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/widgets/0app_bar.dart';

class MyAdvertise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TabController tabController;

    return Scaffold(
      appBar: MyAppBar(
        title: 'إعلاناتي',
        image: 'assets/icons/back.png',
        onTap: () {
          Get.back();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff707070)),
          ),
          height: (50 / size.height) * size.height,
          width: (155 / size.width) * size.width * 2.1,
          child: DefaultTabController(
            length: 2,
            child: TabBar(
              controller: tabController,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              indicatorWeight: 0.00001,
              indicatorColor: Colors.white,
              indicator: BoxDecoration(
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
              tabs: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      'إعلانات منتهية الصلاحية',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      'الإعلانات الاخيرة ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
