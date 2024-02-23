import 'dart:ui';

import 'package:battery_checker_v01/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  /// ********************************************************************************************
  ///
  ///                                 TEXTFIELD USER_REGISTER

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  bool _obscureText = true;
  bool _obscureText2 = true;
 

  Icon invisibleEye = const Icon(Icons.visibility_off, color: Colors.grey,);
  Icon visibleEye = const Icon(Icons.visibility, color: Color(0xff05CAAD),);

  /// ********************************************************************************************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /**COLOR BACKGROUND*/
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
              /**LOGO PRINCIPAL*/
              Container(
                color: Colors.transparent,
                child: SvgPicture.asset(
                  "assets/logo/logo.svg",
                  fit: BoxFit.cover,
                ),
              ),
              //const SizedBox(height: 10),
              /**TEXTO LOGO */
              const Text(
                "Logo genérico de ejemplo",
                style: TextStyle(
                    fontSize: 17, color: Colors.black, fontFamily: "Raleway"),
              ),
              const SizedBox(height: 30),
              /**TEXTFIELD NAME & LASTNAME*/
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  //focusNode: _focusNode,
                  controller: _usernameController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 24,
                    ),
                    prefixIcon: const Icon(Icons.face),
                    prefixIconColor: MaterialStateColor.resolveWith((states) =>
                        states.contains(MaterialState.focused)
                            ? const Color(0xff05CAAD)
                            : Colors.grey),
                    hintText: "Nombre y apellido",
                    hintStyle: const TextStyle(
                        //color: Colors.grey,
                        fontFamily: "Raleway",
                        fontSize: 14),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Radio de los bordes
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
                      ), // Color del borde cuando el campo está enfocado
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              /**TEXTFIELD EMAIL*/
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 24,
                    ),
                    prefixIcon: const Icon(Icons.mail),
                    prefixIconColor: MaterialStateColor.resolveWith((states) =>
                        states.contains(MaterialState.focused)
                            ? const Color(0xff05CAAD)
                            : Colors.grey),
                    hintText: "Correo",
                    hintStyle: const TextStyle(
                        //color: Colors.grey,
                        fontFamily: "Raleway",
                        fontSize: 14),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Radio de los bordes
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
                      ), // Color del borde cuando el campo está enfocado
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              /**TEXTFIELD PHONE*/
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _phoneController,
                  keyboardType: TextInputType
                      .number, // Establece el tipo de teclado como numérico
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                  ],
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 24,
                    ),
                    prefixIcon: const Icon(Icons.phone),
                    prefixIconColor: MaterialStateColor.resolveWith((states) =>
                        states.contains(MaterialState.focused)
                            ? const Color(0xff05CAAD)
                            : Colors.grey),
                    hintText: "Teléfono",
                    hintStyle: const TextStyle(
                        //color: Colors.grey,
                        fontFamily: "Raleway",
                        fontSize: 14),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Radio de los bordes
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
                      ), // Color del borde cuando el campo está enfocado
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
                    prefixIconColor: MaterialStateColor.resolveWith((states) =>
                        states.contains(MaterialState.focused)
                            ? const Color(0xff05CAAD)
                            : Colors.grey),
                    hintText: "Contraseña",
                    hintStyle: const TextStyle(
                        //color: Colors.grey,
                        fontFamily: "Raleway",
                        fontSize: 14),
                    suffixIcon: IconButton(
                      icon: _obscureText ? invisibleEye : visibleEye, 
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
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xff05CAAD),
                        width: 3,
                      ), // Color del borde cuando el campo está enfocado
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              /**TEXTFIELD REPASSWORD*/
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  obscureText: _obscureText2,
                  controller: _rePasswordController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 24,
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    prefixIconColor: MaterialStateColor.resolveWith((states) =>
                        states.contains(MaterialState.focused)
                            ? const Color(0xff05CAAD)
                            : Colors.grey),
                    hintText: "Repetir Contraseña",
                    hintStyle: const TextStyle(
                        //color: Colors.grey,
                        fontFamily: "Raleway",
                        fontSize: 14),
                    suffixIcon: IconButton(
                      icon: _obscureText2 ? invisibleEye : visibleEye, 
                      onPressed: () {
                        setState(() {
                          _obscureText2 =
                              !_obscureText2; // Cambia el estado de ocultar/mostrar texto
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
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xff05CAAD),
                        width: 3,
                      ), // Color del borde cuando el campo está enfocado
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              /**BOTON REGISTER */
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(300, 50)),
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(15, 15)))),
                  shadowColor: MaterialStatePropertyAll(Colors.black),
                  elevation: MaterialStatePropertyAll(25),
                ),
                child: const Text(
                  "Registrarse",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontFamily: "Raleway",
                  ),
                ),
              ),
              const SizedBox(height: 20),
              /**TITTLE*/
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
                      "Regístrate con",
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
            ],
          ),
        ),
      ),
    );
  }
}
