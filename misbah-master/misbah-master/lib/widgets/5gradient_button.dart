import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  Function onTap;
  String label;
  bool gradient;

  GradientButton({this.onTap, this.label, this.gradient = true});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40 / size.height * size.height,
        width: 120 / size.width * size.width,
        child: Center(
          child: FittedBox(
            child: Text(
              label,
              style: TextStyle(
                color: gradient ? Colors.white : Color(0xff013668),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: gradient ? null : Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ],
          gradient: gradient
              ? LinearGradient(
                  colors: [
                    Color(0xff135285),
                    Color(0xff135285),
                    Color(0xff022B4B),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
        ),
      ),
    );
  }
}
