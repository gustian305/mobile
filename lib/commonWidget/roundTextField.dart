import 'package:cocosite/common/colorExtension.dart';
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  const RoundTextField({
    super.key, 
    this.controller, 
    required this.hintText, 
    this.keyboardType, 
    this.obscureText = false,  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColor.textBox,
        borderRadius:BorderRadius.circular(25), 
      ),
      child: TextField(
        autocorrect: false,
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20, 
            horizontal: 8
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText, 
          hintStyle: const TextStyle(
            color: Color(0xff4a4b4d),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}