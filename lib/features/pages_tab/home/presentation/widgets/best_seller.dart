import 'package:cell_phone/core/models/cell_model.dart';
import 'package:cell_phone/core/routes/routes.dart';
import 'package:cell_phone/core/ui/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({
    Key? key,
    required this.data,
  }) : super(key: key);

  final BestSellers data;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.DETAILS, arguments: data);
          },
          child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10)),
              ),
              child: Column(children: [
                Hero(
                  tag: data.img,
                  child: Image.asset(
                    data.img,
                    fit: BoxFit.cover,
                    width: 200,
                    height: 250,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "${data.title}\n".toUpperCase(),
                                style: Theme.of(context).textTheme.button),
                            TextSpan(
                              text: "${data.year}".toUpperCase(),
                              style: const TextStyle(color: Color(0xff13505D)),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      TextWidgets(
                        name: '\$ ${data.price}',
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: Colors.lightBlue),
                      )
                    ],
                  ),
                ),
              ])),
        ));
  }
}
