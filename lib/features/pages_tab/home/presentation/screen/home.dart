import 'package:cell_phone/core/models/cell_model.dart';
import 'package:cell_phone/core/ui/widgets/text_widgets.dart';

import 'package:cell_phone/features/pages_tab/home/presentation/widgets/best_seller.dart';
import 'package:cell_phone/features/pages_tab/home/presentation/widgets/mark.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextWidgets(
                          name: 'Hola Eder.',
                          style: TextStyle(
                              color: Color(0xff13505D),
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        TextWidgets(
                          name: 'Busquemos tu celular',
                          style:
                              TextStyle(color: Color(0xff13505D), fontSize: 18),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(color: Colors.black26, blurRadius: 15)
                        ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Hero(
                            tag: "profile",
                            child: Image.asset(
                              "assets/eder.jpg",
                              height: 65,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const TextWidgets(
                  name: "Selecciona tu marca",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(
                  height: 20,
                ),
                AspectRatio(
                  aspectRatio: 2,
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 8,
                      ),
                      itemCount: itemsInfo.length,
                      itemBuilder: (context, index) => Mark(
                            data: itemsInfo[index],
                          )),
                ),
                const SizedBox(
                  height: 35,
                ),
                const TextWidgets(
                  name: "Nuevos modelos",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(
                  height: 20,
                ),
                AspectRatio(
                  aspectRatio: 1.15,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: itemsBestSeller.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          BestSeller(data: itemsBestSeller[index])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
