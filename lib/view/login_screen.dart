import 'dart:ui';

import 'package:battery_checker_v01/services/local_auth_service.dart';
import 'package:battery_checker_v01/view/battery_register_info_screen.dart';
import 'package:battery_checker_v01/view/battery_register_screen.dart';
import 'package:battery_checker_v01/view/user_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:local_auth/local_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  /// ********************************************************************************************
  ///
  ///                                 DECLARATIONS OF VARIABLE

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;
  // ignore: prefer_final_fields
  FocusNode _focusNode = FocusNode();

  static late final LocalAuthentication authentication;
  bool _supportState = false;

  bool faceId = false;

  /// ********************************************************************************************
  ///
  ///                                 DECLARATION INITSTATE

  @override
  void initState() {
    super.initState();
    authentication = LocalAuthentication();
    authentication.isDeviceSupported().then(
          (bool isDeviceSupported) => setState(() {
            _supportState = isDeviceSupported;
          }),
        );
  }

  /// ********************************************************************************************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /**BACKGROUND COLOR */
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
              const SizedBox(height: 55),
              /**PRINCIPAL LOGO*/
              Container(
                color: Colors.transparent,
                child: SvgPicture.asset(
                  "assets/logo/logo.svg",
                  fit: BoxFit.cover,
                ),
              ),
              /**TEXT LOGO */
              const Text(
                "Logo genérico de ejemplo",
                style: TextStyle(
                    fontSize: 17, color: Colors.black, fontFamily: "Raleway"),
              ),
              const SizedBox(height: 30),
              /**TEXTFIELD EMAIL/PHONE_NUMBER*/
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  focusNode: _focusNode,
                  controller: _usernameController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 24,
                    ),
                    prefixIcon: const Icon(Icons.mail),
                    hintText: "Correo/Teléfono",
                    hintStyle: const TextStyle(
                        //color: Colors.grey,
                        fontFamily: "Raleway",
                        fontSize: 14),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xff05CAAD),
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              /**TEXTFIELD PASSWORD*/
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  obscureText: _obscureText,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 24,
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    hintText: "Contraseña",
                    hintStyle: const TextStyle(
                        //color: Colors.grey,
                        fontFamily: "Raleway",
                        fontSize: 14),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              /**BUTTON FORGOT PASSWORD */
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 0.0),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "¿Olvidaste la ",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontFamily: "Raleway",
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.zero),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "contraseña",
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: "Raleway",
                            //decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const Text(
                        "?",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontFamily: "Raleway",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              /**BUTTON LOGIN */
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BatteryRegister(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(300, 50)),
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(15, 15))),
                  ),
                  shadowColor: MaterialStatePropertyAll(Colors.black),
                  elevation: MaterialStatePropertyAll(25),
                ),
                child: const Text(
                  "Iniciar Sesión",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontFamily: "Raleway",
                  ),
                ),
              ),
              const SizedBox(height: 30),
              /*FINGER_PRINT AND FACE_ID */
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /**BOTON FINGER_PRINT */
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ],
                        borderRadius: BorderRadius.circular(40)),
                    child: IconButton(
                        onPressed: _getAvailableBiometrics,
                        iconSize: 30,
                        icon: const Icon(
                          Icons.fingerprint,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(width: 50),
                  /**BOTON FACE_ID */
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ],
                        borderRadius: BorderRadius.circular(40)),
                    child: IconButton(
                      onPressed: () async {
                        final isAuthenticated =
                            await LocalAuthApi.authenticacion;
                        if (isAuthenticated == true) {
                          setState(
                            () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        // ignore: use_build_context_synchronously
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Cerrar"),
                                    )
                                  ],
                                  title: const Text(
                                    "¡Atención!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: "Raleway",
                                    ),
                                  ),
                                  icon: const Icon(
                                    Icons.error,
                                    color: Colors.green,
                                    size: 100,
                                  ),
                                  contentPadding: const EdgeInsets.all(20),
                                  content: const Text(
                                    "Todo fino bro",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: "Raleway",
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                      iconSize: 30,
                      icon: Image.asset(
                        "assets/icons/png/ar_on_you.png",
                        width: 38,
                        height: 38,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              /**OR CONNECT THROUGH */
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "O conéctate a través de",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: "Raleway",
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              /**GOOGLE, APPLE Y FACEBOOK*/
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /**GOOGLE */
                  Container(
                    width: 90,
                    height: 70,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      gradient: const LinearGradient(colors: [
                        Color(0xffFFFFFF),
                        Color.fromARGB(0, 255, 255, 255)
                      ]),
                      border: Border.all(
                          style: BorderStyle.solid,
                          width: 5,
                          color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      iconSize: 40,
                      icon: Image.asset(
                        "assets/icons/png/google.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  /**APPLE */
                  Container(
                    width: 90,
                    height: 70,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      gradient: const LinearGradient(colors: [
                        Color(0xffFFFFFF),
                        Color.fromARGB(0, 255, 255, 255)
                      ]),
                      border: Border.all(
                          style: BorderStyle.solid,
                          width: 5,
                          color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      color: const Color.fromARGB(255, 0, 0, 0),
                      iconSize: 40,
                      icon: const Icon(
                        Icons.apple,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  /**FACEBOOK */
                  Container(
                    width: 90,
                    height: 70,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      gradient: const LinearGradient(colors: [
                        Color(0xffFFFFFF),
                        Color.fromARGB(0, 255, 255, 255)
                      ]),
                      border: Border.all(
                          style: BorderStyle.solid,
                          width: 5,
                          color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      color: const Color.fromARGB(255, 0, 0, 0),
                      iconSize: 40,
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.blue[900],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              /**REGISTER */
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "¿No tienes cuenta?",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Raleway",
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Regístrate",
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: "Raleway",
                        //decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// ********************************************************************************************
  ///
  ///                                 METHOD _AUTHENTICATE_FACEID

  // Future<void> _authenticateFaceId() async {
  //   try {
  //     bool authFaceId = await authentication.authenticate(
  //       localizedReason:
  //           "Por favor, mira hacia la camara para autenticarte para continuar",
  //       options: const AuthenticationOptions(
  //         useErrorDialogs: true,
  //         stickyAuth: true,
  //         biometricOnly: false,
  //       ),
  //     );

  //     print("Autenticado: $authFaceId");
  //   } on PlatformException catch (e) {
  //     print(e);
  //   }
  // }

  /// ********************************************************************************************
  ///
  ///                                 METHOD _GETAVAILABLEBIOMETRICS

  Future<void> _getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics =
        await authentication.getAvailableBiometrics();
    faceId = availableBiometrics.contains(BiometricType.face);
    print("Lista biometrica disponible: $availableBiometrics");

    try {
      _supportState = await authentication.authenticate(
          localizedReason: 'Por favor, autenticate para continuar',
          options: const AuthenticationOptions(
            useErrorDialogs: true,
            stickyAuth: true,
          ));
    } catch (e) {
      print('Error de autenticación: $e');
      setState(
        () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    // ignore: use_build_context_synchronously
                    Navigator.pop(context);
                  },
                  child: const Text("Cerrar"),
                )
              ],
              title: const Text(
                "¡Atención!",
                textAlign: TextAlign.center,
              ),
              icon: const Icon(
                Icons.error,
                color: Colors.red,
                size: 100,
              ),
              contentPadding: const EdgeInsets.all(20),
              content: const Text(
                  "Su Dispisitivo no cuenta con la función de autenticación con huella, por favor intente acceder de otra manera"),
            ),
          );
        },
      );
    }

    if (_supportState) {
      print('Autenticación exitosa');
      // Realiza alguna acción después de la autenticación exitosa
    } else {
      print('Autenticación fallida');
      // setState(
      //   () {
      //     showDialog(
      //       context: context,
      //       builder: (context) => AlertDialog(
      //         actions: [
      //           TextButton(
      //             onPressed: () {
      //               // ignore: use_build_context_synchronously
      //               Navigator.pop(context);
      //             },
      //             child: const Text("Cerrar"),
      //           )
      //         ],
      //         title: const Text(
      //           "¡Atención!",
      //           textAlign: TextAlign.center,
      //         ),
      //         icon: const Icon(
      //           Icons.error,
      //           color: Colors.red,
      //           size: 100,
      //         ),
      //         contentPadding: const EdgeInsets.all(20),
      //         content: const Text(
      //             "Error de autenticación por favor verifique si su dispisitivo cuenta con la función de autenticación con huella."),
      //       ),
      //     );
      //   },
      // );
    }
  }
}
