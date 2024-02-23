import 'package:battery_checker_v01/view/cards/container_group_cell1_item.dart';
import 'package:battery_checker_v01/view/cards/container_group_cell4_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grouped_list/grouped_list.dart';

class CodiaPage extends StatefulWidget {
  final containerComponentModelList = [
    ContainerGroupCell1Model(
      section: 0,
      cellType: 'ContainerGroupCell1Item',
      textNickAuto: 'Nick del auto',
      textTurbocell: 'TURBOCELL',
      textChevrolet: 'Chevrolet',
      textCabinaHighCountry: 'S10 CABINA HIGH COUNTRY',
      textModeloPlatinum: 'Modelo: Platinum AGM 48agmd-800',
      textPlaca: 'Placa',
      textSerial: 'Serial: 123415487874',
      textAno: 'Año',
      imageAuto: 'assets/images/imageAuto_I740221280271.png',
      imageCarBattery: 'assets/images/imageCarBattery_I740221280272.png',
    ),

    // ContainerGroupCell1Model(
    //   section: 0,
    //   cellType: 'ContainerGroupCell1Item',
    //   textNickAuto: 'Nick del auto',
    //   textTurbocell: 'TURBOCELL',
    //   textChevrolet: 'Chevrolet',
    //   textChevrolet: 'S10 CABINA HIGH COUNTRY',
    //   textModeloPlatinum: 'Modelo: Platinum AGM 48agmd-800',
    //   textChevrolet: 'Placa',
    //   textModeloPlatinum: 'Serial: 123415487874',
    //   textChevrolet: 'Año',
    //   imageAuto: 'images/imageAuto_I740221280285.png',
    //   imageCarBattery: 'images/imageCarBattery_I740221280286.png',
    // ),
    // ContainerGroupCell1Model(
    //   section: 0,
    //   cellType: 'ContainerGroupCell1Item',
    //   textNickAuto: 'Nick del auto',
    //   textTurbocell: 'TURBOCELL',
    //   textChevrolet: 'Chevrolet',
    //   textChevrolet: 'S10 CABINA HIGH COUNTRY',
    //   textModeloPlatinum: 'Modelo: Platinum AGM 48agmd-800',
    //   textChevrolet: 'Placa',
    //   textModeloPlatinum: 'Serial: 123415487874',
    //   textChevrolet: 'Año',
    //   imageAuto: 'images/imageAuto_I740221280299.png',
    //   imageCarBattery: 'images/imageCarBattery_I740221280300.png',

    // ),
    ContainerGroupCell4Model(
      section: 0,
      cellType: 'ContainerGroupCell4Item',
      textNickAuto: 'Nick del auto',
      textTurbocell: 'TURBOCELL',
      textChevrolet: 'Chevrolet',
      textCabinaHighCountry: 'S10 CABINA HIGH COUNTRY',
      textModeloPlatinum: 'Modelo: Platinum AGM 48agmd-800',
      textPlaca: 'Placa',
      textSerial: 'Serial: 123415487874',
      textAno: 'Año',
      imageAuto: 'assets/images/imageAuto_I740221280313.png',
      imageCarBattery: 'assets/images/imageCarBattery_I740221280314.png',
    ),
    ContainerGroupCell1Model(
      section: 0,
      cellType: 'ContainerGroupCell1Item',
      textNickAuto: 'Nick del auto',
      textTurbocell: 'TURBOCELL',
      textChevrolet: 'Chevrolet',
      textCabinaHighCountry: 'S10 CABINA HIGH COUNTRY',
      textModeloPlatinum: 'Modelo: Platinum AGM 48agmd-800',
      textPlaca: 'Placa',
      textSerial: 'Serial: 123415487874',
      textAno: 'Año',
      imageAuto: 'assets/images/imageAuto_I740221280327.png',
      imageCarBattery: 'assets/images/imageCarBattery_I740221280328.png',
    ),
  ];
  CodiaPage({super.key});

  @override
  State<StatefulWidget> createState() => _CodiaPage();
}

class _CodiaPage extends State<CodiaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 428,
        height: 926,
        decoration: const BoxDecoration(
          color: Color(0xfffbfbfb),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 27, right: 10, bottom: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/svg/on.svg",
                                width: 56,
                                height: 56,
                              ),
                              SvgPicture.asset(
                                "assets/logo/logo.svg",
                                width: 56,
                                height: 56,
                              ),
                              SvgPicture.asset(
                                "assets/icons/svg/bat1.svg",
                                width: 56,
                                height: 56,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  //color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          //color: Colors.amber,
                          height: 780,
                          child: Stack(
                            children: [
                              GroupedListView<dynamic, int>(
                                elements: widget.containerComponentModelList,
                                groupBy: (model) => model.section,
                                groupHeaderBuilder: (model) => Container(),
                                itemBuilder: (context, model) {
                                  if (model.cellType ==
                                      'ContainerGroupCell1Item') {
                                    return ContainerGroupCell1Item(
                                        model: model);
                                  }
                                  if (model.cellType ==
                                      'ContainerGroupCell4Item') {
                                    return ContainerGroupCell4Item(
                                        model: model);
                                  }
                                  return Container();
                                },
                              ),
                              Positioned(
                                left: 9,
                                right: 9,
                                bottom: 15,
                                height: 54,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 20),
                                    Container(
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 0.8,
                                        ),
                                        borderRadius: BorderRadius.circular(27),
                                      ),
                                      child: ElevatedButton.icon(
                                        icon: const Icon(Icons.car_crash,
                                            color: Colors.black),
                                        onPressed: () {},
                                        style: const ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.transparent),
                                          shadowColor: MaterialStatePropertyAll(
                                              Colors.transparent),
                                        ),
                                        label: const Text(
                                          "Agregar Vehiculo",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "RalewayRoman-Regular",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
