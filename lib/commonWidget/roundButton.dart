// ignore_for_file: file_names

import 'package:cocosite/common/colorExtension.dart';
import 'package:flutter/material.dart';

enum RoundbuttonType { bgPrimary, textPrimary }
class Roundbutton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final RoundbuttonType type;

  const Roundbutton({
    super.key, 
    required this.onPressed, 
    required this.title, 
    this.type = RoundbuttonType.bgPrimary
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: type == RoundbuttonType.bgPrimary ? null : Border.all(
            color: TColor.primary, 
            width: 1
          ),
          color: type == RoundbuttonType.bgPrimary  ? TColor.primary : TColor.white,
          borderRadius: BorderRadius.circular(28)
        ),
        child: Text(
          title,
          style: TextStyle(
            color: type == RoundbuttonType.bgPrimary ? TColor.white : TColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}