import 'package:cell_phone/core/models/cell_model.dart';
import 'package:cell_phone/core/routes/routes.dart';
import 'package:flutter/material.dart';

class Mark extends StatelessWidget {
  const Mark({
    Key? key,
    required this.data,
  }) : super(key: key);
  final Info data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.MARKPHTONE, arguments: data);
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.05),
              blurRadius: 12,
              spreadRadius: -1),
        ]),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            data.img,
          ),
        )),
      ),
    );
  }
}
