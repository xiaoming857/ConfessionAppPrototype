import 'package:flutter/material.dart';


class BengIconButton extends StatelessWidget {
  final double size;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final VoidCallback onPressed;


  BengIconButton(
    {
      this.size: 35,
      @required this.icon,
      this.iconSize: 20,
      this.iconColor,
      this.onPressed,
    }
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(this.size / 2),
      ),

      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(this.size / 2),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(this.size / 2),
            radius: 100,
            child: Icon(
              this.icon,
              size: this.iconSize,
              color: this.iconColor,
            ),

            onTap: onPressed,
          ),
        ),
      ),
    );
  }
}