import 'package:cell_phone/core/models/cell_model.dart';
import 'package:cell_phone/core/ui/widgets/rounded_button.dart';
import 'package:cell_phone/core/ui/widgets/text_widgets.dart';
import 'package:cell_phone/features/home/presentation/bloc/bloc/add_cart_bloc.dart';

import 'package:cell_phone/features/pages_tab/best_sellers/presentartion/widgets/does_not_date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";

class BestSellersScreen extends StatefulWidget {
  const BestSellersScreen({Key? key}) : super(key: key);

  @override
  State<BestSellersScreen> createState() => _BestSellersScreenState();
}

class _BestSellersScreenState extends State<BestSellersScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: BlocBuilder<AddCartBloc, AddCartState>(
        builder: (context, state) {
          return state.best.isNotEmpty
              ? Stack(
                  children: [
                    Column(
                      children: [
                        const TextWidgets(
                          name: "Detalle de la orden",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: state.best.length,
                              itemBuilder: (context, index) {
                                final data = state.best[index];
                                return Center(
                                    child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        color: Colors.white,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 150,
                                        child: Row(
                                          children: [
                                            Container(
                                                height: double.infinity,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Color(0xffF2F2F2)),
                                                child: Image.asset(
                                                  data.img,
                                                  fit: BoxFit.cover,
                                                )),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Wrap(
                                                spacing: 5.0,
                                                runSpacing: 5.0,
                                                direction: Axis.vertical,
                                                children: [
                                                  Text(
                                                    data.title,
                                                    style: const TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  TextWidgets(
                                                    name: "\$ ${data.price}",
                                                  ),
                                                  Row(
                                                    children: [
                                                      CupertinoButton(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          color: Colors.green,
                                                          child: const Icon(
                                                              Icons.add),
                                                          onPressed: () {
                                                            context
                                                                .read<
                                                                    AddCartBloc>()
                                                                .addCart(data);
                                                            setState(() {});
                                                          }),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      TextWidgets(
                                                        name: data.count == 0
                                                            ? "1"
                                                            : data.count
                                                                .toString(),
                                                        style: const TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      CupertinoButton(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          color: Colors.red,
                                                          child: const Icon(
                                                              Icons.remove),
                                                          onPressed: () {
                                                            context
                                                                .read<
                                                                    AddCartBloc>()
                                                                .removeCart(
                                                                    data);
                                                            setState(() {});
                                                          }),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ));
                              }),
                        )
                      ],
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: SizedBox(
                          // width: double.infinity,
                          height: size.height * 0.11,

                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const TextWidgets(
                                      name: "Total:",
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                  TextWidgets(
                                      name:
                                          "\$ ${state.count.toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ))
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: size.width * 0.9,
                                child: RoundedButton(
                                  borderRadius: BorderRadius.circular(10),
                                  name: "Pagar Ahora",
                                  onpressed: () {
                                    setState(() {});
                                  },
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                )
              : const DoesNotDate();
        },
      ),
    );
  }
}
