import 'package:cell_phone/core/routes/routes.dart';
import 'package:cell_phone/core/ui/widgets/input_textformfield.dart';
import 'package:cell_phone/core/ui/widgets/rounded_button.dart';
import 'package:cell_phone/core/ui/widgets/text_widgets.dart';
import 'package:cell_phone/features/auth/login/presentation/bloc/login/login_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/src/provider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool visible = false;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 80,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: CupertinoButton(
            child: SvgPicture.asset(
              'assets/turn.svg',
              height: 220,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.AUTH);
            },
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height -
                    kToolbarHeight -
                    kToolbarHeight,
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
                                name: "Vamos inicia sesión.",
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
                              BlocSelector<LoginBloc, LoginState, bool>(
                                selector: (state) => state.errorEmail,
                                builder: (context, state) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      InputTextformfield(
                                        labelText: "Correo",
                                        helperText:
                                            "ederzambranomero@gmail.com",
                                        hintText: "ederzambranomero@gmail.com",
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        onChanged: (value) {
                                          bloc.add(
                                              LoginEmailChangedEvent(value));
                                        },
                                      ),
                                      Text(
                                        state ? "Correo no válido" : "",
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.right,
                                      )
                                    ],
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              BlocSelector<LoginBloc, LoginState, bool>(
                                selector: (state) => state.errorPassword,
                                builder: (context, state) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      InputTextformfield(
                                        helperText: "Eder18091997",
                                        hintText: "Eder18091997",
                                        labelText: "Contraseña",
                                        oscureText: visible,
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
                                                : const Icon(
                                                    Icons.visibility_off),
                                          ),
                                        ),
                                        onChanged: (value) {
                                          bloc.add(LoginPasswordChanged(value));
                                        },
                                      ),
                                      Text(
                                        state ? "Contraseña no válida" : "",
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.right,
                                      )
                                    ],
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 15,
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
                            const Text(
                              "No tienes cuenta?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            RoundedButton(
                                padding: EdgeInsets.zero,
                                name: "Registrate",
                                styleText: const TextStyle(
                                    color: Colors.black, fontSize: 15),
                                onpressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, AppRoutes.REGISTER);
                                })
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: RoundedButton(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            name: "Iniciar Sesión",
                            styleText: const TextStyle(color: Colors.white),
                            onpressed: () => _submit(context, bloc),
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
        ));
  }

  void _submit(BuildContext context, LoginBloc bloc) async {
    final data = await bloc.submit();
    final message = bloc.state.message;
    if (data) {
      Navigator.pushReplacementNamed(context, AppRoutes.HOME);
    } else {
      final snackBar = SnackBar(
        content: Text(message),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
