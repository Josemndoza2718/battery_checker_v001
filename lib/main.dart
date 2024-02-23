import 'package:battery_checker_v01/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const String urlGeneralApi = "http://10.1.12.22:8866/api";
String batterySerial = "";
TextEditingController controllerSerial = TextEditingController();
TextEditingController controllerBrand = TextEditingController();
TextEditingController controllerModel = TextEditingController();
TextEditingController controllerStartDate = TextEditingController();
TextEditingController controllerEndDate = TextEditingController();
String? dropdownVechicleType;
String? dropdownBardVechicleType;

Image? gifImage;


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
