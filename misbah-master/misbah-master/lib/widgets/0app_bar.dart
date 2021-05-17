import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/screens/1home.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  List<Widget> widgets;
  String title;
  String image;
  Function onTap;
  MyAppBar({this.widgets, this.title, this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top - 1),
      child: widgets == null
          ? Container(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          image,
                        ),
                      ),
                      onTap: onTap,
                    ),
                  )
                ],
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: widgets,
            ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Color(0xff135285),
            Color(0xff135285),
            Color(0xff022B4B),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500],
            blurRadius: 20.0,
            spreadRadius: 1.0,
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
