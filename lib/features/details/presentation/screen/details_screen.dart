import 'package:cell_phone/core/models/cell_model.dart';
import 'package:cell_phone/core/routes/routes.dart';
import 'package:cell_phone/core/ui/widgets/rounded_button.dart';
import 'package:cell_phone/core/ui/widgets/text_widgets.dart';
import 'package:cell_phone/features/home/presentation/bloc/bloc/add_cart_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

late String _url =
    'https://www.google.com.ec/maps/place/Novicompu/@-0.9489392,-80.7302347,17z/data=!4m13!1m7!3m6!1s0x902be1482f38c0bb:0xa579b82b9e3fa23d!2sAv.+24+%26+C.+13,+Manta!3b1!8m2!3d-0.9507414!4d-80.7303527!3m4!1s0x902be13a157e253f:0xc3743f0691c6144c!8m2!3d-0.9474149!4d-80.7257481?hl=es';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as BestSellers;

    return Stack(children: [
      Scaffold(
          body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Hero(
                    tag: args.img,
                    child: Image.asset(
                      args.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          Icons.shopping_cart_rounded,
                          color: Color(0xff003FFF),
                        ),
                        const TextWidgets(
                          name: "Compralo ahora",
                          style:
                              TextStyle(color: Color(0xff003FFF), fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextWidgets(
                        name: args.title.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 20,
                    ),
                    TextWidgets(
                      name: args.location,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextWidgets(
                      name: args.description,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: _launchURL,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                    color: const Color(0xffF1F1F1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xff003FFF),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidgets(name: args.location),
                                  TextWidgets(name: args.location2)
                                ],
                              ),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios_sharp)
                        ],
                      ),
                    ),
                    const Divider(
                      height: 30,
                      thickness: 1.2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextWidgets(
                      name: "\$ ${args.price}",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: RoundedButton(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        name: "Agregar al Carrito",
                        onpressed: () {
                          context.read<AddCartBloc>().addCart(args);
                          const snackBar = SnackBar(
                            content: Text('Agregado al carrito correctamente'),
                            backgroundColor: Colors.blueAccent,
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        color: const Color(0xff003FFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, AppRoutes.HOME);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
        )
      ])),
    ]);
  }
}

void _launchURL() async {
  if (!await launch(_url, statusBarBrightness: Brightness.light)) {
    throw 'Could not launch $_url';
  }
}
