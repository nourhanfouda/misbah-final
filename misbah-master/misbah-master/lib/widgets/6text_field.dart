import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String label;
  int maxlines;
  int minlines;

  MyTextField({this.label, this.maxlines,this.minlines});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          minLines: minlines,
          maxLines: maxlines,
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ),
    );
  }
}
