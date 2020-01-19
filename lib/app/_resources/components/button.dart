import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final Color backgroundColor;
  final Function onPress;

  CustomButton({
    Key key,
    this.child,
    this.borderColor,
    this.backgroundColor,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: borderColor != null
              ? Border.all(width: 1, color: borderColor)
              : null,
          borderRadius: BorderRadius.circular(5),
        ),
        child: child,
      ),
    );
  }
}
