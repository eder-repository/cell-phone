import 'package:cell_phone/core/models/cell_model.dart';
import 'package:cell_phone/core/ui/widgets/text_widgets.dart';
import 'package:cell_phone/features/select-brand/presentation/widgets/item_select_widgets.dart';
import 'package:flutter/material.dart';

class SelectBrand extends StatelessWidget {
  const SelectBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Info;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - kToolbarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: TextWidgets(
                  name: "Celulares ${args.title}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.87,
                child: GridView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 7 / 11,
                    mainAxisSpacing: 19,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: args.phone.length,
                  itemBuilder: (context, index) =>
                      ItemSelectBrand(args: args.phone[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
