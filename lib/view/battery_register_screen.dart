import 'package:battery_checker_v01/view/battery_register_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BatteryRegister extends StatefulWidget {
  const BatteryRegister({super.key});

  @override
  State<BatteryRegister> createState() => _BatteryRegisterState();
}

class _BatteryRegisterState extends State<BatteryRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
              const Divider(height: 20, color: Colors.transparent),
              //LOGO PRINCIPAL
              Container(
                color: Colors.transparent,
                child:SvgPicture.asset(
                                "assets/logo/logo.svg",
                                width: 56,
                                height: 56,
                              ),
              ),
              //
              const Divider(height: 200, color: Colors.transparent),
              //TITULO
              const Text(
                "Seleccione una opción\npara continuar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontFamily: "Raleway",
                ),
              ),
              //
              const Divider(height: 100, color: Colors.transparent),
              //BOTONES
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    icon: SvgPicture.asset(
                      "assets/icons/svg/battery.svg",
                      fit: BoxFit.cover,
                    ),
                    onPressed: () {
                       Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BatteryInformation(),
                    ),
                  );
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        //shadowColor: MaterialStatePropertyAll(Colors.transparent),
                        //padding: MaterialStatePropertyAll(EdgeInsets.symmetric())
                        ),
                    label: const Text(
                      "Registrar\nBatería",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Raleway",
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    icon: SvgPicture.asset(
                      "assets/icons/svg/battery.svg",
                      fit: BoxFit.cover,
                    ),
                    onPressed: null,
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        //shadowColor: MaterialStatePropertyAll(Colors.transparent),
                        //padding: MaterialStatePropertyAll(EdgeInsets.symmetric())
                        ),
                    label: const Text(
                      "Registrar\nVehículo",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Raleway",
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
