import 'package:battery_checker_v01/model/battery_register_model.dart';
import 'package:battery_checker_v01/view/car_register_info_screen.dart';
import 'package:battery_checker_v01/view_model/sql_db_services/res/battery_db.dart';
import 'package:battery_checker_v01/widget/create_battery_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BatteryInformation extends StatefulWidget {
  const BatteryInformation({super.key});

  @override
  State<BatteryInformation> createState() => _BatteryInformationState();
}

GlobalKey formkey = GlobalKey<FormState>();

class _BatteryInformationState extends State<BatteryInformation> {
  Future<List<Battery>>? futureBattery;
  final batteryDb = BatteryDb();

  /// ********************************************************************************************
  ///
  ///                                 TEXTFORMFIELD AUTOMATICO

  final TextEditingController _controllerSerial = TextEditingController();
  final TextEditingController _controllerBrand = TextEditingController();
  final TextEditingController _controllerModel = TextEditingController();
  final TextEditingController _controllerStartDate = TextEditingController();
  final TextEditingController _controllerEndDate = TextEditingController();

  bool _isEditableBrand = true;
  bool _isEditableModel = true;
  bool _isEditableStartDate = true;
  bool _isEditableEndDate = true;

  @override
  void dispose() {
    _controllerSerial.dispose();
    _controllerBrand.dispose();
    _controllerModel.dispose();
    _controllerStartDate.dispose();
    _controllerEndDate.dispose();
    super.dispose();
  }

  void _onTextChanged(String value) {
    if (value.length == 12) {
      _controllerBrand.text = 'TurboCell';
      _controllerModel.text = '48agmd-800';
      _controllerStartDate.text = '11-10-23';
      _controllerEndDate.text = '11-10-24';

      setState(() {
        _isEditableBrand = false;
      _isEditableModel = false;
      _isEditableStartDate = false;
      _isEditableEndDate = false;
      });
    } else {
      // _controllerBrand.clear();
      // _controllerModel.clear();
      // _controllerStartDate.clear();
      // _controllerEndDate.clear();

      setState(() {
        _isEditableBrand = true;
        _isEditableModel = true;
        _isEditableStartDate = true;
        _isEditableEndDate = true;
      });

      // showDialog(
      //   context: context,
      //   builder: (context) => AlertDialog(
      //     actions: [
      //       TextButton(
      //         onPressed: () {
      //           // ignore: use_build_context_synchronously
      //           Navigator.pop(context);
      //         },
      //         child: const Text("Cerrar"),
      //       )
      //     ],
      //     title: const Text(
      //       "¡Atención!",
      //       textAlign: TextAlign.center,
      //     ),
      //     icon: const Icon(
      //       Icons.error,
      //       color: Colors.red,
      //       size: 100,
      //     ),
      //     contentPadding: const EdgeInsets.all(20),
      //     content: const Text(
      //         "El serial que ingresado no coincide con ninguno que sea Turbocel"),
      //   ),
      // );
    }
  }

  /// ********************************************************************************************
  
  @override
  void initState() {
    super.initState();
    fetchBattery();
  }

  void fetchBattery() {
    setState(
      () {
        futureBattery = batteryDb.fetchAll();
      },
    );
  }

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
              const Divider(height: 100, color: Colors.transparent),
              const Text(
                "Registre el serial o los\ndatos de su batería",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontFamily: "Raleway",
                ),
              ),
              const Divider(height: 50, color: Colors.transparent),
              //BOTON
              ElevatedButton.icon(
                onPressed: null,
                icon: const Icon(
                  Icons.qr_code,
                  color: Colors.white,
                ),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
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
              Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      textAlign: TextAlign.center,
                      controller: _controllerSerial,
                      onChanged: _onTextChanged,
                      // TextFormField(onTap: () {
                      //   showDialog(
                      //   context: context,
                      //   builder: (_) => CreateBatteryWidget(
                      //     onSubmit: (battery) async {
                      //       await batteryDb.create(batteryId: battery);
                      //       if (!mounted) return;
                      //       fetchBattery();
                      //       Navigator.of(context).pop();
                      //     }
                      //   ));
                      // },
                      decoration: InputDecoration(
                        //hintText: "Serial",
                        label: const Text("Serial"),
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
                          textAlign: TextAlign.right,
                          controller: _controllerBrand,
                          enabled: _isEditableBrand,
                          decoration: InputDecoration(
                            label: const Text("Marca"),
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
                          textAlign: TextAlign.right,
                          controller: _controllerModel,
                          enabled: _isEditableModel,
                          decoration: InputDecoration(
                            label: const Text("Modelo"),
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
                    const Divider(height: 10, color: Colors.transparent),
                    TextFormField(
                      textAlign: TextAlign.right,
                      controller: _controllerStartDate,
                      enabled: _isEditableStartDate,
                      decoration: InputDecoration(
                        label: const Text("Fecha de inicio de garantía"),
                        constraints: BoxConstraints.loose(const Size(300, 50)),
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
                      textAlign: TextAlign.end,
                      controller: _controllerEndDate,
                      enabled: _isEditableEndDate,
                      decoration: InputDecoration(
                        label: const Text("Fecha de vencimiento de garantía"),
                        constraints: BoxConstraints.loose(const Size(300, 50)),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.elliptical(20, 20),
                            right: Radius.elliptical(20, 20),
                          ),
                        ),
                      ),
                    ),
                    const Divider(height: 40, color: Colors.transparent),
                    //BOTON CONTINUAR
                    Row(
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
