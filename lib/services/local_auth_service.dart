import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthApi{
  static final authenticacion = LocalAuthentication();

  static Future<bool> hasBiometrics() async{
    try{
    return await authenticacion.canCheckBiometrics;
    } on PlatformException catch (e){
      return false;
    }
  }

  static Future<bool> _authFaceId() async {
    final isAvaible = await hasBiometrics();
    if(!isAvaible) return false;

    try{
    return await authenticacion.authenticate(
      localizedReason: "Posa pa la foto papi",
      options: const AuthenticationOptions(
        useErrorDialogs: true,
        stickyAuth: true,
      ),
    );
    }on PlatformException catch (e){
      return false;
    }
  }
}
  
  
  
  // Future<void> _authenticateFaceId() async {
  //   try {
  //     bool authFaceId = await authentication.authenticate(
  //       localizedReason: "Funciona",
  //       options: const AuthenticationOptions(
  //         stickyAuth: true,
  //         biometricOnly: false,
  //       ),
  //     );
  //     print("Autenticado: $authFaceId");
  //   } on PlatformException catch (e) {
  //     print(e);
  //   }
  // }

  // Future<void> _getAvailableBiometrics() async {
  //   List<BiometricType> availableBiometrics =
  //       await authentication.getAvailableBiometrics();
  //   print("Lista biometrica disponible: $availableBiometrics");

  //   try {
  //     _supportState = await authentication.authenticate(
  //         localizedReason: 'Por favor, autentica para continuar',
  //         options: const AuthenticationOptions(
  //           useErrorDialogs: true,
  //           stickyAuth: true,
  //         ));
  //   } catch (e) {
  //     print('Error de autenticación: $e');
  //     setState(
  //       () {
  //         showDialog(
  //           context: context,
  //           builder: (context) => AlertDialog(
  //             actions: [
  //               TextButton(
  //                 onPressed: () {
  //                   // ignore: use_build_context_synchronously
  //                   Navigator.pop(context);
  //                 },
  //                 child: const Text("Cerrar"),
  //               )
  //             ],
  //             title: const Text(
  //               "¡Atención!",
  //               textAlign: TextAlign.center,
  //             ),
  //             icon: const Icon(
  //               Icons.error,
  //               color: Colors.red,
  //               size: 100,
  //             ),
  //             contentPadding: const EdgeInsets.all(20),
  //             content: const Text(
  //                 "Su Dispisitivo no cuenta con la función de autenticación con huella, por favor intente acceder de otra manera"),
  //           ),
  //         );
  //       },
  //     );
  //   }

  //   if (_supportState) {
  //     print('Autenticación exitosa');
  //     // Realiza alguna acción después de la autenticación exitosa
  //   } else {
  //     print('Autenticación fallida');
  //     // setState(
  //     //   () {
  //     //     showDialog(
  //     //       context: context,
  //     //       builder: (context) => AlertDialog(
  //     //         actions: [
  //     //           TextButton(
  //     //             onPressed: () {
  //     //               // ignore: use_build_context_synchronously
  //     //               Navigator.pop(context);
  //     //             },
  //     //             child: const Text("Cerrar"),
  //     //           )
  //     //         ],
  //     //         title: const Text(
  //     //           "¡Atención!",
  //     //           textAlign: TextAlign.center,
  //     //         ),
  //     //         icon: const Icon(
  //     //           Icons.error,
  //     //           color: Colors.red,
  //     //           size: 100,
  //     //         ),
  //     //         contentPadding: const EdgeInsets.all(20),
  //     //         content: const Text(
  //     //             "Su Dispisitivo no cuenta con la función de autenticación con huella, por favor intente acceder de otra manera"),
  //     //       ),
  //     //     );
  //     //   },
  //     // );
  //   }

  //   // if(!mounted){
  //   //   return;
  //   // }
  // }