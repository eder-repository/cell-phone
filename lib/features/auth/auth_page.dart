import 'package:cell_phone/core/routes/routes.dart';
import 'package:cell_phone/core/ui/widgets/rounded_button.dart';
import 'package:cell_phone/core/ui/widgets/text_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        child: SafeArea(
          // ignore: avoid_unnecessary_containers
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height - kToolbarHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Image.asset(
                            "assets/logo-cell.png",
                            width: size.width,
                            height: size.height * 0.5,
                          )),
                      const TextWidgets(
                        name: "Ventas de celular",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextWidgets(
                        name: "Bienvenido",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: TextWidgets(
                          name:
                              "La mejor tecnologia la tenemos nosotros no esperes mas, registrate e inicia sesion",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          RoundedButton(
                            name: "Iniciar Sesion",
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            styleText: const TextStyle(color: Colors.white),
                            onpressed: () {
                              Navigator.pushReplacementNamed(
                                  context, AppRoutes.LOGIN);
                            },
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          RoundedButton(
                              name: "Registrate",
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              styleText: const TextStyle(color: Colors.black),
                              onpressed: () {
                                Navigator.pushReplacementNamed(
                                    context, AppRoutes.REGISTER);
                              }),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
