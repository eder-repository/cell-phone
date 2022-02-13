import 'package:cell_phone/core/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.name,
      this.padding,
      this.styleText,
      this.borderRadius,
      required this.onpressed,
      this.color})
      : super(key: key);

  final String name;
  final EdgeInsetsGeometry? padding;
  final TextStyle? styleText;
  final BorderRadius? borderRadius;
  final void Function() onpressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: padding,
      child: Text(
        name,
        style: styleText,
      ),
      onPressed: onpressed,
      borderRadius: borderRadius,
      color: color,
    );
  }
}
