import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 241, 241, 241),
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Image.asset(
                "assets/images/bateria_de_coche.png",
                height: 150,
              ),
              const SizedBox(height: 10),
              const Text(
                "Logo genérico de ejemplo",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  focusNode: _focusNode,
                  controller: _usernameController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 24,
                    ),
                    prefixIcon: const Icon(Icons.mail),
                    hintText: "Correo/Teléfono",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Radio de los bordes
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(30.0),
                    //   borderSide: const BorderSide(
                    //     color: Colors.green,
                    //   ), // Color del borde cuando el campo está enfocado
                    // ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  obscureText: _obscureText,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 24),
                    prefixIcon: const Icon(Icons.lock),
                    hintText: "Contraseña",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText =
                              !_obscureText; // Cambia el estado de ocultar/mostrar texto
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Radio de los bordes
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(30.0),
                    //   borderSide: const BorderSide(
                    //       color: Colors
                    //           .green), // Color del borde cuando el campo está enfocado
                    // ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "¿Olvidaste la",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "contraseña?",
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 50),
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(15, 15)))),
                child: const Text(
                  "Iniciar Sesión",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ink(
                    decoration: const ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                    child: IconButton(
                        onPressed: () {},
                        iconSize: 50,
                        icon: Image.asset(
                          "assets/icons/google.png",
                          width: 38,
                          height: 38,
                        )),
                  ),
                  const SizedBox(width: 50),
                  IconButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 0, 0, 0),
                    iconSize: 50,
                    icon: const Icon(
                      Icons.apple,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 50),
                  IconButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 0, 0, 0),
                    iconSize: 50,
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.blue[900],
                    ),
                  )
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Ink(
              //         decoration: ShapeDecoration(
              //           color: Colors.lightBlue,
              //           shape: CircleBorder(),
              //         ),
              //         child: IconButton(
              //           icon: Icon(Icons.volume_up),
              //           color: Colors.white,
              //           onPressed: () {},
              //         )),
              //     Ink(
              //       decoration: ShapeDecoration(
              //         color: Colors.lightBlue,
              //         shape: CircleBorder(),
              //       ),
              //       child: IconButton(
              //         onPressed: () {},
              //         color: Colors.black,
              //         iconSize: 50,
              //         icon: const Icon(
              //           Icons.fingerprint,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ),
              //     const SizedBox(width: 50),
              //     Ink(
              //       decoration: const ShapeDecoration(
              //         color: Colors.black,
              //         shape: CircleBorder(),
              //       ),
              //       child: IconButton(
              //         onPressed: () {},
              //         color: const Color.fromARGB(255, 0, 0, 0),
              //         iconSize: 50,
              //         icon: const Icon(
              //           Icons.face_6_rounded,
              //           color: Colors.white,
              //         ),
              //       ),
              //     )
              //   ],
              // ),
              const SizedBox(height: 20),
              const Text(
                "O conéctate a través de",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ink(
                    decoration: const ShapeDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 255, 255, 255), // Color inicial
                          Color.fromARGB(0, 255, 255, 255), // Color final
                        ]),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                    child: IconButton(
                        onPressed: () {},
                        iconSize: 50,
                        icon: Image.asset(
                          "assets/icons/google.png",
                          width: 38,
                          height: 38,
                        )),
                  ),
                  const SizedBox(width: 50),
                  Ink(
                    decoration: const ShapeDecoration(
                      color: Color.fromARGB(255, 71, 160, 201),
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      color: const Color.fromARGB(255, 0, 0, 0),
                      iconSize: 50,
                      icon: const Icon(
                        Icons.apple,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  IconButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 0, 0, 0),
                    iconSize: 50,
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.blue[900],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "¿No tienes cuenta?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => RegisterScreen(),
                      //   ),
                      // );
                    },
                    child: const Text(
                      "Regístrate",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
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
}
