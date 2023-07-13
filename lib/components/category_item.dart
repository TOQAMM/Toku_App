import 'package:flutter/material.dart';

class category extends StatelessWidget {
  category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
          height: 80,
          width: 350,
          child: Center(
            child: Text(
              text!,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
