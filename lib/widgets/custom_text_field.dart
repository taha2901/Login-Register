// custom_text_field.dart

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    this.onChange,
    this.obscure = false,
    this.inputType,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixPressed,
    this.ispassword,
    bool? isPassword,
    TextInputType? type,
    this.fillColor,
    this.showBorder = true, // تحديث: إضافة متغير للتحكم في إظهار الحدود
  }) : super(key: key);

  final bool showBorder; // تحديث: متغير للتحكم في إظهار الحدود
  final Color? fillColor;
  final String? hint;
  final Function(String)? onChange;
  final bool? obscure;
  final TextInputType? inputType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? suffixPressed;
  final bool? ispassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextFormField(
        onTap: widget.suffixPressed,
        obscureText: widget.obscure!,
        keyboardType: widget.inputType,
        textAlign: TextAlign.left,
        validator: (data) {
          if (data!.isEmpty) {
            return "Value Is Wrong";
          }
        },
        onChanged: widget.onChange,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.fillColor,
          hintText: widget.hint!,
          contentPadding: const EdgeInsets.symmetric(horizontal: 50),
          hintStyle: const TextStyle(),
          border: widget.showBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              : InputBorder.none, 
          prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          suffixIcon: widget.suffixIcon != null ? Icon(widget.suffixIcon) : null,          
        ),
      ),
    );
  }
}
