import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/const.dart';
import 'package:misbah/screens/10about.dart';
import 'package:misbah/screens/5new_ad.dart';
import 'package:misbah/screens/6my_ads.dart';
import 'package:misbah/screens/7fav_list.dart';
import 'package:misbah/screens/8buy_backage.dart';
import 'package:misbah/screens/9contact_us.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:misbah/screens/11edit_profile.dart';
import 'package:misbah/screens/1home.dart';
import 'package:misbah/widgets/11logout_widget.dart';

class MyAppDrawer extends StatelessWidget {
  final Uri _url = Uri(
    scheme: 'fb',
    host: 'www.facebook.com',
  );
  final Uri _urlW = Uri(
    scheme: 'whatsapp',
  );

  // final Uri _urlSNAP = Uri(
  //   scheme: 'snapchat',
  //   host: 'www.snapchat.com',
  //
  // );
  // final Uri _urlinsta= Uri(
  //   scheme: 'instagram',
  //   host: 'instagram.com',
  //
  // );
  void _launchURL() async => await canLaunch(_url.toString())
      ? await launch(_url.toString())
      : throw 'Could not launch $_url';

  void _launchW() async => await canLaunch(_urlW.toString())
      ? await launch(_urlW.toString())
      : throw 'Could not launch $_urlW';

  // void _launchSNAP() async => await canLaunch(_urlSNAP.toString())
  //     ? await launch(_urlSNAP.toString())
  //     : throw 'Could not launch $_urlSNAP';
  //
  // void _launchinsta() async => await canLaunch(_urlinsta.toString())
  //     ? await launch(_urlinsta.toString())
  //     : throw 'Could not launch $_urlinsta';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: (218 / size.width) * size.width,
        child: Padding(
          padding: EdgeInsets.only(top: (80 / size.height) * size.height),
          child: Drawer(
            child: Container(
              color: Color(0xff013668),
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0xff013668),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    accountName: Text(
                      " اسم المستخدم",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    accountEmail: SizedBox(
                      width: (218 / size.width) * size.width,
                      child: Row(
                        children: [
                          Text('الرصيد المتبقي'),
                          SizedBox(
                            width: 24,
                          ),
                          Text(
                            'اعلانات  6',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff217BC1)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: (218 / size.width) * size.width,
                    height: (550 / size.height) * size.height,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        builTile(
                          icon: drawerIcons[0],
                          label: drawerTile[0],
                          onTap: () {
                            Get.back();
                          },
                        ),
                        builTile(
                            icon: drawerIcons[1],
                            label: drawerTile[1],
                            onTap: () {
                              Get.to(NewAdd());
                            }),
                        builTile(
                            icon: drawerIcons[2],
                            label: drawerTile[2],
                            onTap: () {
                              Get.to(MyAdvertise());
                            }),
                        builTile(
                            icon: drawerIcons[3],
                            label: drawerTile[3],
                            onTap: () {
                              Get.to(FavoriteList());
                            }),
                        builTile(
                            icon: drawerIcons[4],
                            label: drawerTile[4],
                            onTap: () {
                              Get.to(BuyBackage());
                            }),
                        builTile(
                            icon: drawerIcons[5],
                            label: drawerTile[5],
                            onTap: () {
                              Get.to(
                                EditProfile(),
                              );
                            }),
                        builTile(
                            icon: drawerIcons[6],
                            label: drawerTile[6],
                            onTap: () {
                              Get.to(ContactUs());
                            }),
                        builTile(
                            icon: drawerIcons[7],
                            label: drawerTile[7],
                            onTap: () {
                              Get.to(AboutUs());
                            }),
                        builTile(
                          icon: drawerIcons[8],
                          label: drawerTile[8],
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 192 / size.height * size.height,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset('assets/icons/twitt.png'),
                                          GestureDetector(
                                            child: Image.asset(
                                                'assets/icons/insta.png'),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              _launchURL();
                                              print(_url);
                                            },
                                            child: Image.asset(
                                                'assets/icons/face.png'),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                              child: Image.asset(
                                                  'assets/icons/snap.png')),
                                          GestureDetector(
                                              onTap: _launchW,
                                              child: Image.asset(
                                                  'assets/icons/whats.png')),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        builTile(
                            icon: drawerIcons[9],
                            label: drawerTile[9],
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => LogoutWidget(),
                              );
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget builTile({String icon, String label, Function onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(icon),
      title: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
