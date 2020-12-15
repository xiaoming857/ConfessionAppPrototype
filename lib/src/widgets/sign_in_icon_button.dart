import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class SignInIconButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final Color buttonColor;
  final BorderRadius borderRadius;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final List<BoxShadow> boxShadow;
  final Function onPressed;


  SignInIconButton(
      {
        @required this.icon,
        this.iconSize: 35,
        this.iconColor: Colors.black,
        this.buttonColor: Colors.white,
        this.borderRadius,
        this.margin: const EdgeInsets.all(8),
        this.padding: const EdgeInsets.all(3),
        this.boxShadow: const [BoxShadow(
          color: Colors.grey,
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(1, 3),
        )],

        this.onPressed,
      }
      ) : assert(iconSize != null && iconSize > 0);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.margin,
      decoration: BoxDecoration(
        color: this.buttonColor,
        borderRadius: this.borderRadius ?? BorderRadius.circular(30),
        boxShadow: this.boxShadow,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: this.borderRadius ?? BorderRadius.circular(30),
        child: InkWell(
          borderRadius: this.borderRadius ?? BorderRadius.circular(30),
          radius: this.iconSize * 3,
          child: Padding(
            padding: this.padding,
            child: Icon(
              this.icon,
              size: this.iconSize,
              color: this.iconColor,
            ),
          ),

          onTap: this.onPressed,
        ),
      ),
    );
  }
}