import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(this.text,
      {Key? key,
      required,
      this.padding = 0.0,
      this.height = 45,
      this.width = 350,
      this.foregroundcolor = Colors.white,
      this.textstyle = const TextStyle(fontSize: 18),
      required this.onPressed,
      required this.backgroundcolor})
      : super(key: key);

  /// Should be inside a column, row or flex widget
  final String text;
  final double padding;
  final double height;
  final double width;
  final TextStyle textstyle;
  final Color backgroundcolor;
  final Color foregroundcolor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: ElevatedButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(foregroundcolor),
            backgroundColor: MaterialStateProperty.all(backgroundcolor),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: textstyle,
          ),
        ),
      ),
    );
  }
}
