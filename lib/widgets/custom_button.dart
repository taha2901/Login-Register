import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.text, this.color,this.textcolor, this.onTap, this.icon}) : super(key: key);
  String? text;
  Color? color;
  Color? textcolor;
  VoidCallback? onTap;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text!,
                style: TextStyle(color: textcolor),
              ),
              const SizedBox(width: 8.0),
              Icon(
                icon,
                color: Colors.white,
                size: 24.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
