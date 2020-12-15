import 'package:flutter/material.dart';

import 'package:confeal_prototype_test/src/utils/beng_color.dart';

class BengNavBarIcon extends StatelessWidget {
  final double width;
  final double height;
  final IconData icon;
  final double iconSize;
  final double iconSizeIncrease;
  final String message;
  final double fontSize;
  final Color color;
  final Color selectedColor;
  final VoidCallback onPressed;
  final bool isSelected;


  BengNavBarIcon(
    {
      this.width: 80,
      this.height,
      this.icon,
      this.iconSize: 21,
      this.iconSizeIncrease: 3,
      this.message,
      this.fontSize: 12,
      this.color: Colors.grey,
      this.selectedColor: BengColor.darkPurple,
      this.onPressed,
      this.isSelected,
    }
  );


  Widget _getIcon() {
    return Icon(
      this.icon,
      size: this.isSelected ? this.iconSize + this.iconSizeIncrease : this.iconSize,
      color: this.isSelected ? this.selectedColor : this.color,
    );
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width,
      height: this.height,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: (this.message == null) ? this._getIcon() : Tooltip(
          message: this.message ?? '',
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.7),
            borderRadius: BorderRadius.circular(30),
          ),

          height: 25,
          verticalOffset: 15,

          child: _getIcon(),
        ),

        onTap: onPressed,
      ),
    );
  }
}
