import 'package:cell_phone/core/models/cell_model.dart';
import 'package:cell_phone/core/ui/widgets/text_widgets.dart';
import 'package:cell_phone/features/pages_tab/profile/presentation/widgets/purchase_widgets.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 50,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                    const TextWidgets(
                      name: "Perfil",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.settings)
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextWidgets(
                      name: "Información",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.black12, blurRadius: 10),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text("Nombres:"),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Eder Melquiades")
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Text("Apellidos:"),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Zambrano Mero")
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Text("Correo:"),
                              SizedBox(
                                width: 20,
                              ),
                              Text("ederzambranomero@gmail.com")
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextWidgets(
                      name: "Mis Compras",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    const Divider(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: GridView.builder(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 50),
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 7 / 9,
                            mainAxisSpacing: 19,
                            crossAxisSpacing: 5,
                          ),
                          itemCount: purchase.length,
                          itemBuilder: (context, index) => Purchase(
                                data: purchase[index],
                              )),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
