import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:card_swiper/card_swiper.dart';

class MyCars extends StatefulWidget {
  const MyCars({super.key});

  @override
  State<MyCars> createState() => _MyCasrsState();
}

class _MyCasrsState extends State<MyCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
            children: [
              const Divider(height: 30, color: Colors.transparent),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              const Divider(height: 50, color: Colors.transparent),
              const _swipper(),
            ],
          ),
        ),
      ),
    );
  }
}

class _swipper extends StatelessWidget {
  const _swipper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 550,
      child: Swiper(
        itemBuilder: (BuildContext context, index) {
          return Container(
            width: double.infinity,
            height: 550,
            //color: Colors.black,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Card(
                  color: Colors.amber,
                  shape: BeveledRectangleBorder(),
                  child: Text("data1"),
                )),
                Expanded(
                    child: Card(
                  color: Colors.red,
                  shape: BeveledRectangleBorder(),
                  child: Text("data2"),
                )),
                Expanded(
                    child: Card(
                  color: Colors.blue,
                  shape: BeveledRectangleBorder(),
                  child: Text("data3"),
                )),
              ],
            ),
          );
        },
        //autoplay: true,
        itemCount: 3,
        itemWidth: 300,
        scrollDirection: Axis.vertical,
        viewportFraction: 0.8,
        //scale: 0.9,
        //pagination: const SwiperPagination(alignment: Alignment.centerRight),
        //control: const SwiperControl(),
        
      ),
    );
  }
}
