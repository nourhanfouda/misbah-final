import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buybackagewidget extends StatelessWidget {
  String label;
  String price;
  String duration;
  String adNum;
  Buybackagewidget({this.label, this.adNum, this.duration, this.price});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xff217BC1)),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4,
            spreadRadius: 5,
            offset: Offset(0, 0.9),
          )
        ],
      ),
      width: 144/size.width * size.width,
      height: 144/size.height * size.height,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              label,
              style: TextStyle(
                  color: Color(0xffFF0000),
                  fontSize: 25,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              price,
              style: TextStyle(
                  color: Color(0xff217BC1), fontSize: 20, letterSpacing: 1.5),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            adNum,
            style: TextStyle(
                color: Color(0xff707070),
                fontSize: 13,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text(
              duration,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
