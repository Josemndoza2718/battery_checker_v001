import 'package:battery_checker_v01/main.dart';
import 'package:battery_checker_v01/model/api_response_models/batteries.dart';
import 'package:battery_checker_v01/services/api_services.dart';
import 'package:battery_checker_v01/view/car_register_info_screen.dart';
import 'package:battery_checker_v01/view_model/provider/brands_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class BatteryInformation extends StatefulWidget {
  BatteryInformation({super.key});

  @override
  State<BatteryInformation> createState() => _BatteryInformationState();
}

GlobalKey formkey = GlobalKey<FormState>();

class _BatteryInformationState extends State<BatteryInformation> {
  /// ********************************************************************************************
  ///
  ///                                 TEXTFORMFIELD AUTO

  // final TextEditingController _controllerSerial = TextEditingController();
  // final TextEditingController _controllerBrand = TextEditingController();
  // final TextEditingController _controllerModel = TextEditingController();
  // final TextEditingController _controllerStartDate = TextEditingController();
  // final TextEditingController _controllerEndDate = TextEditingController();

  bool _isEditableBrand = true;
  bool _isEditableModel = true;
  bool _isEditableStartDate = true;
  bool _isEditableEndDate = true;

  @override
  void dispose() {
    controllerSerial.dispose();
    controllerBrand.dispose();
    controllerModel.dispose();
    controllerStartDate.dispose();
    controllerEndDate.dispose();
    super.dispose();
  }

  //DateTime selectDate = DateTime.now();

  String dropdownBatteryBard = "Opcion 1";

  /// ********************************************************************************************

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            BrandsListProvider().BrandList();
          },
          lazy: false,
        )
      ],
      child: Scaffold(
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
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisSize: MainAxisSize.min,
              children: [
                const Divider(height: 30, color: Colors.transparent),
                //PRINCIPAL LOGO
                Container(
                  color: Colors.transparent,
                  child: SvgPicture.asset(
                    "assets/logo/logo.svg",
                    width: 56,
                    height: 56,
                  ),
                ),
                const Divider(height: 100, color: Colors.transparent),
                Container(
                  color: Colors.transparent,
                  child: const Text(
                    "Registre el serial o los\ndatos de su batería",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontFamily: "Raleway",
                    ),
                  ),
                ),
                const Divider(height: 50, color: Colors.transparent),
                //BATTERY REGISTER
                Container(
                  color: Colors.transparent,
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        //BUTTON REGISTER EXPRESS
                        ElevatedButton.icon(
                          onPressed: null,
                          icon: const Icon(
                            Icons.qr_code,
                            color: Colors.white,
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.black),
                            minimumSize:
                                MaterialStateProperty.all(const Size(300, 45)),
                            shape: const MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(12, 12))),
                            ),

                            //fixedSize: MaterialStatePropertyAll()
                          ),
                          label: const Text(
                            "Registro Express",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Raleway",
                            ),
                          ),
                        ),
                        const Divider(height: 10, color: Colors.transparent),
                        //TEXTFORMFIEL_SERIAL AND BUTTON_SEARCH
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              textAlign: TextAlign.center,
                              controller: controllerSerial,
                              onChanged: _onTextChanged,
                              // onTap: () async {
                              //   await ApiServices().batteries();
                              // },
                              decoration: InputDecoration(
                                  label: const Text("Serial",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: "Raleway")),
                                  constraints:
                                      BoxConstraints.loose(const Size(230, 50)),
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
                                  suffixIcon: gifImage),
                            ),
                            const SizedBox(width: 20),
                            //BUTTON SEARCH
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10)),
                                child: IconButton(
                                    onPressed: () async {
                                      var respuesta =
                                          await ApiServices().batteries();
                                      setState(() {
                                        _isEditableBrand = !(respuesta);
                                        _isEditableModel = !(respuesta);
                                        _isEditableStartDate = !(respuesta);
                                        _isEditableEndDate = !(respuesta);
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                        const Divider(height: 10, color: Colors.transparent),
                        //TEXTFORMFIEL_BRAND AND TEXTFORMFIEL_MODEL
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // //**TEXTFORMFIEL_BRAND
                            // TextFormField(
                            //   textAlign: TextAlign.left,
                            //   controller: controllerBrand,
                            //   enabled: _isEditableBrand,
                            //   onChanged: (_) async {
                            //     await ApiServices().batteriesInfo(Batteries());
                            //   },
                            //   // onTap: () async {
                            //   //   await ApiServices().batterySearchInfo!();
                            //   // },
                            //   decoration: InputDecoration(
                            //     label: const Text(
                            //       "Marca",
                            //       style: TextStyle(color: Colors.grey, fontFamily: "Raleway"),
                            //     ),
                            //     constraints:
                            //         BoxConstraints.loose(const Size(135, 40)),
                            //     border: const OutlineInputBorder(
                            //       borderRadius: BorderRadius.horizontal(
                            //         left: Radius.elliptical(15, 15),
                            //         right: Radius.elliptical(15, 15),
                            //       ),
                            //     ),
                            //     focusedBorder: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(15.0),
                            //       borderSide: const BorderSide(
                            //         color: Color(0xff05CAAD),
                            //         width: 3,
                            //       ), // Color del borde cuando el campo está enfocado
                            //     ),
                            //   ),
                            // ),
                            //**TEXTFORMFIEL_BRAND_2
                            Container(
                              width: 140,
                              height: 40,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: DropdownButton<String>(
                                  value: '$dropdownBatteryBard 1',
                                  underline:
                                      Container(color: Colors.transparent),
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "Raleway"),
                                  onTap: () async {
                                    await ApiServices().brandsList();
                                    //await PaginationList().brandsList();
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      dropdownCall(value);
                                    });
                                  },
                                  isExpanded: true,
                                  iconEnabledColor: Colors.black,
                                  items: _generateItems(),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            //**TEXTFORMFIEL_MODEL
                            TextFormField(
                              textAlign: TextAlign.left,
                              controller: controllerModel,
                              enabled: _isEditableModel,
                              decoration: InputDecoration(
                                label: const Text(
                                  "Modelo",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Raleway"),
                                ),
                                constraints:
                                    BoxConstraints.loose(const Size(135, 40)),
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
                                  ), // Color del borde cuando el campo está enfocado
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(height: 10, color: Colors.transparent),
                        //TEXTFORMFIEL_STARTDATE_WARRANTY
                        TextFormField(
                          textAlign: TextAlign.left,
                          controller: controllerStartDate,
                          enabled: _isEditableStartDate,
                          keyboardType: TextInputType.none,
                          onTap: () {
                            _selecStartDate();
                          },
                          decoration: InputDecoration(
                            label: const Text(
                              "Fecha de inicio de garantía",
                              style: TextStyle(
                                  color: Colors.grey, fontFamily: "Raleway"),
                            ),
                            constraints:
                                BoxConstraints.loose(const Size(300, 40)),
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
                              ), // Color del borde cuando el campo está enfocado
                            ),
                          ),
                          readOnly: true,
                        ),
                        const Divider(height: 10, color: Colors.transparent),
                        //TEXTFORMFIEL_ENDDATE_WARRANTY
                        TextFormField(
                          textAlign: TextAlign.left,
                          controller: controllerEndDate,
                          enabled: _isEditableEndDate,
                          keyboardType: TextInputType.none,
                          onTap: () {
                            _selecEndDate();
                          },
                          decoration: InputDecoration(
                            label: const Text(
                              "Fecha de vencimiento de garantía",
                              style: TextStyle(
                                  color: Colors.grey, fontFamily: "Raleway"),
                            ),
                            constraints:
                                BoxConstraints.loose(const Size(300, 40)),
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
                              ), // Color del borde cuando el campo está enfocado
                            ),
                          ),
                          readOnly: true,
                        ),
                        const Divider(height: 10, color: Colors.transparent),
                        //VEHICLESTYPES
                        Container(
                          width: 300,
                          height: 40,
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
                                value: dropdownVechicleType,
                                underline: Container(color: Colors.transparent),
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: "Raleway"),
                                onChanged: (newValue) {
                                  setState(() {
                                    dropdownVechicleType = newValue;
                                  });
                                },
                                isExpanded: true,
                                icon: null,
                                iconEnabledColor: Colors.black,
                                items: const [
                                  DropdownMenuItem<String>(
                                      value: null,
                                      child: Text(
                                        "Agregar batería a...",
                                      )),
                                  DropdownMenuItem<String>(
                                      value: "One",
                                      child: Text(
                                        "Vehiculo",
                                      )),
                                  DropdownMenuItem<String>(
                                      value: "Two",
                                      child: Text(
                                        "Otros",
                                      )),
                                ]),
                          ),
                        ),
                        const Divider(height: 10, color: Colors.transparent),
                      ],
                    ),
                  ),
                ),
                //PHOTO WARRANTY AND PHOTO CHECK
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.8,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ElevatedButton.icon(
                        icon:
                            const Icon(Icons.image_search, color: Colors.black),
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Colors.transparent),
                            shadowColor: const MaterialStatePropertyAll(
                                Colors.transparent),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    const EdgeInsets.symmetric(horizontal: 8))),
                        label: const Text(
                          "Subir garantía",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Raleway",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // Color del contorno
                          width: 0.8, // Ancho del contorno
                        ),
                        borderRadius: BorderRadius.circular(
                            16), // Radio de borde para esquinas redondeadas
                      ),
                      child: ElevatedButton.icon(
                        icon:
                            const Icon(Icons.image_search, color: Colors.black),
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Colors.transparent),
                            shadowColor: const MaterialStatePropertyAll(
                                Colors.transparent),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    const EdgeInsets.symmetric(horizontal: 8))),
                        label: const Text(
                          "Subir factura",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Raleway",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(height: 30, color: Colors.transparent),
                //BUTTON CONTINUE
                Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
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
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// ********************************************************************************************
  ///
  ///                                 METHOD SELECSTARTDATE

  Future<void> _selecStartDate() async {
    DateTime? _pickedStart = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (_pickedStart != null) {
      setState(() {
        String formattedDate = DateFormat('dd/MM/yyyy').format(_pickedStart);
        controllerStartDate.text = formattedDate;
      });
    }
  }

  /// ********************************************************************************************
  ///
  ///                                 METHOD SELECENDDATE

  Future<void> _selecEndDate() async {
    DateTime? _pickedEnd = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (_pickedEnd != null) {
      setState(() {
        String formattedDate = DateFormat('dd/MM/yyyy').format(_pickedEnd);
        controllerStartDate.text = formattedDate;
      });
    }
  }

  /// ********************************************************************************************
  ///
  ///                                 METHOD _ONTEXTCHANGED

  void _onTextChanged(String value) {
    /*if (value.length == 12) {

      print("serial: $batterySerial");
      // gifImage = Image.asset(
      //   "assets/gif/output-onlinegiftoolsc.gif",
      //   width: 5,
      //   height: 5,
      // );
    } else if (value.isEmpty) {*/
    controllerBrand.clear();
    controllerModel.clear();
    controllerStartDate.clear();
    controllerEndDate.clear();

    gifImage = null;
    //}
    batterySerial = controllerSerial.text;
  }

  /// ********************************************************************************************
  ///
  ///                                 METHOD _GENERATEITEMS

  void dropdownCall(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        dropdownBatteryBard = selectedValue;
      });
    }
  }

  List<DropdownMenuItem<String>> _generateItems() {
    List<DropdownMenuItem<String>> items = [];
    for (int i = 1; i <= 20; i++) {
      items.add(
        DropdownMenuItem(
          value: '$dropdownBatteryBard $i',
          child: Text('Opción $i'),
        ),
      );
    }
    return items;
  }
}

/// ********************************************************************************************
///
///                                 CLASS _STATELESS

// class ProviderHelp extends StatelessWidget {
//   const ProviderHelp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) {
//           BrandsListProvider();
//         },)
//       ],
//     );
//   }
// }
