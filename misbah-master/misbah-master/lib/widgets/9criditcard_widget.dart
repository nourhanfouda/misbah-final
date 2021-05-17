import 'package:flutter/material.dart';

class CriditCardWidget extends StatelessWidget {
  String image;
  String label;
  CriditCardWidget({this.image, this.label});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: 152 / size.width * size.width,
        height: 88 / size.height * size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.values[5]),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 65),
          child: Text(label),
        )),
      ),
    );
  }
}
