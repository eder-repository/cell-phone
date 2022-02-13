import 'package:cell_phone/core/models/cell_model.dart';
import 'package:cell_phone/core/ui/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class Purchase extends StatelessWidget {
  const Purchase({
    required this.data,
    Key? key,
  }) : super(key: key);

  final Purchases data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 12,
            spreadRadius: -1),
      ]),
      child: Column(
        children: [
          Image.asset(data.img),
          TextWidgets(
            name: data.title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          TextWidgets(name: " \$ ${data.price}")
        ],
      ),
    );
  }
}
