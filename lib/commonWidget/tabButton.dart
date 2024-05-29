import 'package:cocosite/common/colorExtension.dart';
import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final bool isSelected;
  final String icon;
  const TabButton({
    super.key, 
    required this.onTap, 
    required this.title, 
    required this.isSelected, 
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
              onTap: onTap,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    icon,
                    height: 25, 
                    width: 25,
                    color: isSelected ? TColor.primary : TColor.placeholder, 
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    title, 
                    style: TextStyle(

                      color: isSelected ? TColor.primary : TColor.placeholder, 
                      fontSize: 12, 
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
            );
  }
}