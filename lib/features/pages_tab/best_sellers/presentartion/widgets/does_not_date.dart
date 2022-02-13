import 'package:cell_phone/core/ui/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class DoesNotDate extends StatelessWidget {
  const DoesNotDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: const Color(0xffFCFCFC),
        child: const Center(
          child: TextWidgets(
            name: "No hay datos",
          ),
        ),
      ),
    );
  }
}
