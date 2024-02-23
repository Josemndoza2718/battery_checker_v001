import 'package:flutter/material.dart';

class ContainerGroupCell1Item extends StatefulWidget {
  final ContainerGroupCell1Model model;

  const ContainerGroupCell1Item({super.key, required this.model});

  @override
  State<StatefulWidget> createState() => _ContainerGroupCell1Item();
}

class _ContainerGroupCell1Item extends State<ContainerGroupCell1Item> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 325.33,
        height: 170,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              width: 325.33,
              top: 0,
              height: 170,
              child: Container(
                width: 325.33,
                height: 170,
                decoration: BoxDecoration(
                  color: const Color(0xff2c2c2c),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [BoxShadow(color: const Color(0x264f4f4f), offset: Offset(0, 0), blurRadius: 7),],
                ),
              ),
            ),
            Positioned(
              left: 18.122,
              width: 132.168,
              top: 62.512,
              height: 19.848,
              child: Text(
                widget.model.textNickAuto,
                textAlign: TextAlign.left,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xffffffff), fontFamily: 'RalewayRoman-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 169.137,
              width: 140.797,
              top: 62.512,
              height: 19.848,
              child: Text(
                widget.model.textTurbocell,
                textAlign: TextAlign.right,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xffffffff), fontFamily: 'RalewayRoman-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 18.122,
              width: 158.919,
              top: 84.569,
              height: 14.67,
              child: Text(
                widget.model.textChevrolet,
                textAlign: TextAlign.left,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'RalewayRoman-Regular', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 18.122,
              width: 183.944,
              top: 103.553,
              height: 14.67,
              child: Text(
                widget.model.textCabinaHighCountry,
                textAlign: TextAlign.left,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'RalewayRoman-Regular', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 182.081,
              width: 127.853,
              top: 84.569,
              height: 28.477,
              child: Text(
                widget.model.textModeloPlatinum,
                textAlign: TextAlign.right,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'RalewayRoman-Regular', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 71.624,
              width: 120.086,
              top: 123.401,
              height: 14.67,
              child: Text(
                widget.model.textPlaca,
                textAlign: TextAlign.left,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'RalewayRoman-Regular', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 189.848,
              width: 120.086,
              top: 123.401,
              height: 14.67,
              child: Text(
                widget.model.textSerial,
                textAlign: TextAlign.right,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'RalewayRoman-Regular', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 18.122,
              width: 33.792,
              top: 123.401,
              height: 14.67,
              child: Text(
                widget.model.textAno,
                textAlign: TextAlign.left,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'RalewayRoman-Regular', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 18.122,
              width: 49.188,
              top: 15.913,
              height: 36.244,
              child: Image.asset(widget.model.imageAuto, width: 49.188, height: 36.244,),
            ),
            Positioned(
              left: 266.65,
              width: 42.284,
              top: 13.324,
              height: 42.284,
              child: Image.asset(widget.model.imageCarBattery, width: 42.284, height: 42.284, fit: BoxFit.cover,),
            ),
            Positioned(
              left: 18.122,
              width: 290.812,
              top: 149.289,
              height: 6.904,
              child: Container(
                width: 290.812,
                height: 6.904,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.452),
                  color: Color.fromARGB(255, 7, 66, 226)
                ),
              ),
            ),
            Positioned(
              left: 18.122,
              width: 290.812,
              top: 149.289,
              height: 6.904,
              child: Container(
                width: 290.812,
                height: 6.904,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.452),
                  boxShadow: const [BoxShadow(color: const Color(0x3f000000), offset: Offset(0, 4), blurRadius: 4),],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerGroupCell1Model {
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

  ContainerGroupCell1Model({
    this.section = 0,
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
    this.imageCarBattery = ''
  });
}
