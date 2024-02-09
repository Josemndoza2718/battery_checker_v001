import 'package:battery_checker_v01/view/my_cars_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CarInfo extends StatefulWidget {
  const CarInfo({super.key});

  @override
  State<CarInfo> createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  GlobalKey formkey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 241, 241, 241),
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Divider(height: 30, color: Colors.transparent),
            //LOGO PRINCIPAL
            Container(
              color: Colors.transparent,
              child: SvgPicture.asset(
                "assets/logo/logo.svg",
                width: 56,
                height: 56,
              ),
            ),
            const Divider(height: 150, color: Colors.transparent),
            const Text(
              "Indique los datos de su\nvehículo para continuar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 21,
                fontFamily: "Raleway",
              ),
            ),
            const Divider(height: 50, color: Colors.transparent),
            Form(
              key: formkey2,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: const Text("data"),
                      constraints: BoxConstraints.loose(const Size(300, 80)),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.elliptical(20, 20),
                          right: Radius.elliptical(20, 20),
                        ),
                      ),
                    ),
                  ),
                  const Divider(height: 10, color: Colors.transparent),
                  TextFormField(
                    decoration: InputDecoration(
                      label: const Text("data"),
                      constraints: BoxConstraints.loose(const Size(300, 80)),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.elliptical(20, 20),
                          right: Radius.elliptical(20, 20),
                        ),
                      ),
                    ),
                  ),
                  const Divider(height: 10, color: Colors.transparent),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text("data2"),
                          constraints:
                              BoxConstraints.loose(const Size(135, 50)),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.elliptical(20, 20),
                              right: Radius.elliptical(20, 20),
                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text("data3"),
                          constraints:
                              BoxConstraints.loose(const Size(135, 50)),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.elliptical(20, 20),
                              right: Radius.elliptical(20, 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 40, color: Colors.transparent),
                  //BOTONES AGREGAR OTRA MARCA Y CONTINUAR
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //BOTON AGREGAR OTRA MARCA
                      Container(
                        //color: Colors.red,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            IconButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => const CarInfo(),
                                //   ),
                                // );
                              },
                              icon: SvgPicture.asset(
                                "assets/icons/svg/plus.svg",
                                fit: BoxFit.cover,
                              ),
                              iconSize: 40,
                            ),
                            const Text(
                              "Agregar\notra marca",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Raleway"),
                            ),
                          ],
                        ),
                      ),
                      //BOTON CONTINUAR
                      Container(
                        //color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Continuar",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Raleway"),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CarInfo(),
                                  ),
                                );
                              },
                              icon: SvgPicture.asset(
                                "assets/icons/svg/buttonext.svg",
                                fit: BoxFit.cover,
                              ),
                              iconSize: 40,
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 50, color: Colors.transparent),
                  Container(
                    //color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Más tarde",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Raleway"),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyCars(),
                              ),
                            );
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/svg/btondown.svg",
                            fit: BoxFit.cover,
                          ),
                          iconSize: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
