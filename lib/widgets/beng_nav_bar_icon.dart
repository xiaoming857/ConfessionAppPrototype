import 'package:flutter/material.dart';

import 'file:///C:/Users/arvin/AndroidStudioProjects/confession_app_prototype/lib/utils/beng_color.dart';

class BengNavBarIcon extends StatelessWidget {
  final double width;
  final double height;
  final IconData icon;
  final double iconSize;
  final String text;
  final double fontSize;
  final Color color;
  final Color selectedColor;
  final VoidCallback onPressed;
  final bool isSelected;


  BengNavBarIcon(
    {
      this.width: 70,
      this.height,
      this.icon,
      this.iconSize: 18,
      @required this.text,
      this.fontSize: 12,
      this.color: Colors.white,
      this.selectedColor: BengColor.cafeNoir,
      this.onPressed,
      this.isSelected,
    }
  ) : assert (text != null && text.isNotEmpty);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width,
      height: this.height,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              this.icon,
              size: this.isSelected ? this.iconSize + 5 : this.iconSize,
              color: this.isSelected ? this.selectedColor : this.color,
            ),

            Text(
              this.text,
              style: TextStyle(
                fontSize: this.isSelected ? this.fontSize + 1 : this.fontSize,
                color: this.isSelected ? this.selectedColor : this.color,
              ),
            ),
          ],
        ),

        onTap: onPressed,
      ),
    );
  }
}
