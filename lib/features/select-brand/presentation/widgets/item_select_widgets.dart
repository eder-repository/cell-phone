import 'package:cell_phone/core/models/cell_model.dart';
import 'package:cell_phone/core/routes/routes.dart';
import 'package:cell_phone/core/ui/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class ItemSelectBrand extends StatelessWidget {
  const ItemSelectBrand({
    Key? key,
    required this.args,
  }) : super(key: key);

  final BestSellers args;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.DETAILS, arguments: args);
      },
      child: Container(
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Hero(tag: args.img, child: Image.asset(args.img)),
            ),
            TextWidgets(
              name: args.title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            TextWidgets(name: " \$ ${args.price}"),
          ],
        ),
      ),
    );
  }
}
