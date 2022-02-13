import 'package:cell_phone/core/routes/routes.dart';
import 'package:cell_phone/core/ui/widgets/input_textformfield.dart';
import 'package:cell_phone/core/ui/widgets/rounded_button.dart';
import 'package:cell_phone/core/ui/widgets/text_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: CupertinoButton(
            child: SvgPicture.asset('assets/turn.svg',
                height: 220, color: Colors.black),
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.AUTH);
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              child: GestureDetector(
                onTap: FocusScope.of(context).unfocus,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height -
                      kToolbarHeight -
                      kToolbarHeight,
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const TextWidgets(
                                    name: "Vamos a Registrarnos.",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const TextWidgets(
                                    name: "Bienvenido de nuevo.",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const TextWidgets(
                                    name: "Adelante no esperes más!",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ),
                                  const SizedBox(
                                    height: 70,
                                  ),
                                  InputTextformfield(
                                    hintText: "Nombre",
                                    onChanged: (value) => {},
                                    labelText: "Nombre",
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  InputTextformfield(
                                    hintText: "Apellidos",
                                    labelText: "Apellidos",
                                    onChanged: (value) => {},
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  InputTextformfield(
                                    keyboardType: TextInputType.emailAddress,
                                    hintText: "Correo",
                                    labelText: "Correo",
                                    onChanged: (value) => {},
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  InputTextformfield(
                                    oscureText: true,
                                    onChanged: (value) => {},
                                    hintText: "Contraseña",
                                    labelText: "Contraseña",
                                    suffix: GestureDetector(
                                      onTap: () {
                                        visible = !visible;
                                        setState(() {});
                                      },
                                      child: Container(
                                        child: visible
                                            ? const Icon(
                                                Icons.visibility,
                                              )
                                            : const Icon(Icons.visibility_off),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  InputTextformfield(
                                    oscureText: true,
                                    onChanged: (value) => {},
                                    hintText: "Confirmar contraseña",
                                    labelText: "Confirmar contraseña",
                                    suffix: GestureDetector(
                                      onTap: () {
                                        visible = !visible;
                                        setState(() {});
                                      },
                                      child: Container(
                                        child: visible
                                            ? const Icon(
                                                Icons.visibility,
                                              )
                                            : const Icon(Icons.visibility_off),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const TextWidgets(
                                  name: "Si ya tienes cuenta?",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                RoundedButton(
                                    padding: EdgeInsets.zero,
                                    name: "Inicia Sesión",
                                    styleText: const TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    onpressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, AppRoutes.LOGIN);
                                    })
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: RoundedButton(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 40),
                                name: "Registrarse",
                                styleText: const TextStyle(color: Colors.white),
                                onpressed: () {},
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
