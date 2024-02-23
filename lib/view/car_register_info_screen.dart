import 'package:battery_checker_v01/main.dart';
import 'package:battery_checker_v01/view/cards/codia_page.dart';
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
                  //VEHICLESTYPES
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.grey, // Color del contorno
                        width: 0.8, // Ancho del contorno
                      ),
                      borderRadius: BorderRadius.circular(
                          16), // Radio de borde para esquinas redondeadas
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: DropdownButton<String>(
                          //hint: const Text("Agregar batería a..."),
                          value: dropdownBardVechicleType,
                          underline: Container(color: Colors.transparent),
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontFamily: "Raleway"),
                          onChanged: (newValue) {
                            setState(() {
                              dropdownBardVechicleType = newValue;
                            });
                          },
                          isExpanded: true,
                          iconEnabledColor: Colors.black,
                          items: const [
                            DropdownMenuItem<String>(
                                value: null,
                                child: Text(
                                  "Agregar marca...",
                                )),
                            DropdownMenuItem<String>(
                                value: "One",
                                child: Text(
                                  "Subaru",
                                )),
                            DropdownMenuItem<String>(
                                value: "Two",
                                child: Text(
                                  "Suzuki",
                                )),
                          ]),
                    ),
                  ),
                  const Divider(height: 10, color: Colors.transparent),
                  //CAR_MOD
                  TextFormField(
                    decoration: InputDecoration(
                      label: const Text(
                        "Modelo",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: "Raleway"),
                      ),
                      constraints: BoxConstraints.loose(const Size(300, 50)),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.elliptical(15, 15),
                          right: Radius.elliptical(15, 15),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff05CAAD),
                                    width: 3,
                                  ),
                                ),
                    ),
                  ),
                  const Divider(height: 10, color: Colors.transparent),
                  //CAR_YEAR AND CAR_ID
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //*CAR_YEAR
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text(
                            "Año",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: "Raleway"),
                          ),
                          constraints:
                              BoxConstraints.loose(const Size(135, 50)),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.elliptical(15, 15),
                              right: Radius.elliptical(15, 15),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff05CAAD),
                                    width: 3,
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      //*TEXTFORMFIELD CAR_ID
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text(
                            "Placa",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: "Raleway"),
                          ),
                          constraints:
                              BoxConstraints.loose(const Size(135, 50)),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.elliptical(15, 15),
                              right: Radius.elliptical(15, 15),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff05CAAD),
                                    width: 3,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 40, color: Colors.transparent),
                  //BUTTON PLUS AND BUTTON CONTINUE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //BUTTON PLUS
                      Container(
                        //color: Colors.red,
                        child: Row(
                          children: [
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
                              iconSize: 50,
                            ),
                            const Text(
                              "Agregar\notra marca",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Raleway"),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      //BUTTON CONTINUE
                      Container(
                        //color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Continuar",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Raleway"),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CodiaPage(),
                                  ),
                                );
                              },
                              icon: SvgPicture.asset(
                                "assets/icons/svg/buttonext.svg",
                                fit: BoxFit.cover,
                              ),
                              iconSize: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 50, color: Colors.transparent),
                  // Container(
                  //   //color: Colors.amber,
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       const Text(
                  //         "Más tarde",
                  //         style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 18,
                  //             fontWeight: FontWeight.w400,
                  //             fontFamily: "Raleway"),
                  //       ),
                  //       IconButton(
                  //         onPressed: () {
                  //           Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //               builder: (context) => const MyCars(),
                  //             ),
                  //           );
                  //         },
                  //         icon: SvgPicture.asset(
                  //           "assets/icons/svg/btondown.svg",
                  //           fit: BoxFit.cover,
                  //         ),
                  //         iconSize: 40,
                  //       ),
                  //       const SizedBox(
                  //         width: 10,
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
