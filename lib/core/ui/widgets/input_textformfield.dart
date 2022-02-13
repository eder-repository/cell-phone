import 'package:flutter/material.dart';

class InputTextformfield extends StatelessWidget {
  const InputTextformfield(
      {Key? key,
      this.oscureText = false,
      required this.onChanged,
      this.helperText,
      this.suffix,
      this.labelText,
      this.hintText,
      this.keyboardType})
      : super(key: key);

  final bool oscureText;

  final void Function(String)? onChanged;
  final String? helperText;
  final Widget? suffix;
  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: oscureText,
      style: const TextStyle(color: Colors.grey),
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.1),
          filled: true,
          helperText: helperText,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          suffix: suffix,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: labelText,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 14)),
    );
  }
}
