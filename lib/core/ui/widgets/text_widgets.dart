import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  const TextWidgets({
    Key? key,
    required this.name,
    this.style,
    this.textAlign,
  }) : super(key: key);

  final String name;
  final TextStyle? style;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: style,
      textAlign: textAlign,
    );
  }
}
