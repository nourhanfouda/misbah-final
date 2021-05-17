import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:misbah/const.dart';

class Categories extends StatelessWidget {
  String label;
  String image;
  misbahtype type;

  Categories({this.label, this.image, this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            //550
            width: MediaQuery.of(context).size.width - 270,
            height: MediaQuery.of(context).size.height - 550,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xff3B3A3A)),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 4,
                  spreadRadius: 5,
                  offset: Offset(0, 0.9),
                )
              ],
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.values[6]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: FittedBox(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
