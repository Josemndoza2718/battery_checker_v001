import 'package:flutter/material.dart';

class ContainerGroupCell4Item extends StatefulWidget {
  final ContainerGroupCell4Model model;

  const ContainerGroupCell4Item({super.key, required this.model});

  @override
  State<StatefulWidget> createState() => _ContainerGroupCell4Item();
}

class _ContainerGroupCell4Item extends State<ContainerGroupCell4Item> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 400,
            height: 210,
            decoration: BoxDecoration(
              color: const Color(0xff2c2c2c),
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(36, 0, 0, 0),
                    offset: Offset(0, 0),
                    blurRadius: 7),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //CAR_COLUMN
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 14.0),
                        child: Container(
                          //color: Colors.blue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                widget.model.imageAuto,
                                width: 56.694,
                                height: 41.775,
                                //color: Colors.red,
                              ),
                              const Divider(
                                  height: 10, color: Colors.transparent),
                              //TEXT AUTO_NICK
                              Text(
                                widget.model.textNickAuto,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 15,
                                    color: Color(0xffffffff),
                                    fontFamily: 'RalewayRoman-Bold',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Divider(
                                  height: 10, color: Colors.transparent),
                              //TEXT_BARD
                              Text(
                                widget.model.textChevrolet,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    color: Color(0xffffffff),
                                    fontFamily: 'RalewayRoman-Regular',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Divider(
                                  height: 10, color: Colors.transparent),
                              //
                              Text(
                                widget.model.textCabinaHighCountry,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    color: Color(0xffffffff),
                                    fontFamily: 'RalewayRoman-Regular',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Divider(
                                  height: 10, color: Colors.transparent),
                              //TEXT CAR_YEAR AND CAR_ID
                              Container(
                                //color: Colors.purple,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    //*TEXT CAR_YEAR
                                    Text(
                                      widget.model.textAno,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 12,
                                          color: Color(0xffffffff),
                                          fontFamily: 'RalewayRoman-Regular',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    //*TEXT CAR_ID
                                    Text(
                                      widget.model.textPlaca,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 12,
                                          color: Color(0xffffffff),
                                          fontFamily: 'RalewayRoman-Regular',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    //const SizedBox(width: 50),
                    //BATTERY_COLUMN
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 8.0),
                        child: Container(
                          //color: Colors.green,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(
                                widget.model.imageCarBattery,
                                width: 48.737,
                                height: 48.737,
                                //color: Colors.amber,
                                fit: BoxFit.cover,
                              ),
                              const Divider(
                                  height: 10, color: Colors.transparent),
                              //TEXT BATTERY_TYPE
                              Text(
                                widget.model.textTurbocell,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 15,
                                    color: Color(0xffffffff),
                                    fontFamily: 'RalewayRoman-Bold',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Divider(
                                  height: 10, color: Colors.transparent),
                              Text(
                                widget.model.textModeloPlatinum,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    color: Color(0xffffffff),
                                    fontFamily: 'RalewayRoman-Regular',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Divider(
                                  height: 25, color: Colors.transparent),
                              Text(
                                widget.model.textSerial,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    color: Color(0xffffffff),
                                    fontFamily: 'RalewayRoman-Regular',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Divider(height: 10, color: Colors.transparent),
                  ],
                ),
                //BAR
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 335.193,
                    height: 7.957,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.979),
                        gradient: const LinearGradient(
                            colors: [Color(0xff0066FF), Color(0xff06CBAE)])),
                  ),
                ),
                //SHADOW_BAR
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 335.193,
                    height: 7.957,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.979),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0, 4),
                            blurRadius: 4),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerGroupCell4Model {
  int section;
  String cellType;
  String textNickAuto;
  String textTurbocell;
  String textChevrolet;
  String textCabinaHighCountry;
  String textModeloPlatinum;
  String textPlaca;
  String textSerial;
  String textAno;
  String imageAuto;
  String imageCarBattery;

  ContainerGroupCell4Model(
      {this.section = 0,
      this.cellType = '',
      this.textNickAuto = '',
      this.textTurbocell = '',
      this.textChevrolet = '',
      this.textCabinaHighCountry = '',
      this.textModeloPlatinum = '',
      this.textPlaca = '',
      this.textSerial = '',
      this.textAno = '',
      this.imageAuto = '',
      this.imageCarBattery = ''});
}
