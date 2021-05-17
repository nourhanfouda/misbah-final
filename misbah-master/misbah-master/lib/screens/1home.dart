import 'dart:math';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/screens/2msabih.dart';
import 'package:misbah/screens/3advertise.dart';
import 'package:misbah/widgets/0app_bar.dart';
import 'package:misbah/widgets/1app_drawer.dart';
import 'package:misbah/widgets/2categories.dart';

import '../const.dart';

class HomePage extends StatefulWidget {
  misbahtype type;

  HomePage({this.type});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> home = [
    'assets/images/homeimage.png',
    'assets/images/homeimage.png',
    'assets/images/homeimage.png',
  ];

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: MyAppDrawer(),
      appBar: MyAppBar(
        widgets: myWidgets(size),
      ),
      body: Padding(
        padding: const EdgeInsets.all(36),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: MediaQuery.of(context).size.height - 520,
                    child: PageView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: MediaQuery.of(context).size.height - 520,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: ExactAssetImage(home[index]),
                                fit: BoxFit.cover),
                          ),
                        );
                      },
                      itemCount: home.length,
                    ),
                  ),
                  DotsIndicator(
                    dotsCount: home.length,
                    decorator: DotsDecorator(
                      color: Color(0xffBCA8A8), // Inactive color
                      activeColor: Color(0xff044770),
                    ),
                  ),
                  Container(
                    //384.5
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 100,
                    child: GridView(
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: GridTile(
                              child: Categories(
                                image: 'assets/images/accessory.png',
                                label: 'قطع غيار واكسسوارات',
                              ),
                            ),
                            onTap: () {
                              Get.to(Advertise());
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: GridTile(
                              child: Categories(
                                image: 'assets/images/masabih.png',
                                label: 'مسابيح',
                              ),
                            ),
                            onTap: () {
                              Get.to(Msabih());
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: GridTile(
                              child: Categories(
                                image: 'assets/images/ring.png',
                                label: 'خواتم',
                              ),
                            ),
                            onTap: () {
                              Get.to(Advertise());
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: GridTile(
                              child: Categories(
                                image: 'assets/images/stones.png',
                                label: 'أحجار كريمة',
                              ),
                            ),
                            onTap: () {
                              Get.to(Advertise());
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
