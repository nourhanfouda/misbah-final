import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Advertisewidgit extends StatelessWidget {
  String price;
  String phone;
  String advertiseName;
  String viwes;

  Advertisewidgit({this.price, this.phone, this.advertiseName, this.viwes});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        top: 18,
        left: 8,
        right: 8,
      ),
      child: Container(
        width: double.infinity,
        height: size.height - 625,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(price,
                      style: TextStyle(
                          color: Color(0xff013668),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          wordSpacing: 1)),
                  SizedBox(
                    height: 13,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff013668),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(phone),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Image.asset(
                              'assets/images/phone.png',
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(advertiseName,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          wordSpacing: 1)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/images/share.png',
                          ),
                          onTap: () {
                            //   Get.to(HomePage());
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/images/heart.png',
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/images/show.png',
                        ),
                        onTap: () {
                          //   Get.to(HomePage());
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2, top: 12),
                      child: Text(viwes,
                          style: TextStyle(
                              color: Color(0xff878787),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 1)),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
