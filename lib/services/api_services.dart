import 'dart:convert';
import 'package:battery_checker_v01/model/api_response_models/batteries_info.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:battery_checker_v01/main.dart';
import 'package:battery_checker_v01/model/api_response_models/batteries.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Batteries? batterySearch;
  BatteriesInfo? batterySearchInfo;
  BatteriesInfo? batteryUserPostInfo;
  bool respuesta = false;
  List<String> items = [];

  Future batteries() async {
    respuesta = false;
    try {
      //print("parametro metodo ${batterySerial2}");
      print("variableglobal $batterySerial");

      final response = await http
          .get(Uri.parse("$urlGeneralApi/batteries/search/$batterySerial"));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        Batteries batterySearch = Batteries.fromJson(data);
        batteriesInfo(batterySearch);
        //controllerBrand.text = batterySearch.brandId.toString();
        controllerModel.text = batterySearch.modelName.toString();

        String formattedDateStart =
            DateFormat('dd/MM/yyyy').format(batterySearch.dateWarrantyStart!);
        controllerStartDate.text = formattedDateStart;

        String formattedDateEnd =
            DateFormat('dd/MM/yyyy').format(batterySearch.dateWarrantyEnd!);
        controllerEndDate.text = formattedDateEnd;

        //print(response.statusCode);

        respuesta = true;
      } else if (response.statusCode == 404) {
        // ignore: avoid_print
        print("Error 404");

        // _controllerSerial.clear();
      } else if (response.statusCode == 422) {
        // ignore: avoid_print
        print("Error 422");
      } else {
        // ignore: avoid_print
        print(response.body);
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return respuesta;
  }

  Future batteriesInfo(Batteries batterySearch) async {
    int? id = batterySearch.brandId ?? 0;

    try {
      print(id);
      print("YA PASEEEEEEE");
      final response = await http
          .get(Uri.parse("$urlGeneralApi/batteries_brands/detail/$id"));

      if (response.statusCode == 200) {
        var data2 = jsonDecode(response.body);
        BatteriesInfo batterySearchInfo = BatteriesInfo.fromJson(data2);
        controllerBrand.text = batterySearchInfo.name.toString();
        print(response.statusCode);
      } else {
        print(response.body);
      }
    } catch (i) {
      print(i);
    }
  }

  Future batteryUserPost() async {}

   Future brandsList() async {
    try {

      // ignore: avoid_print
          print("YA PASEEEEEEE");

      final response = await http
          .get(Uri.parse("$urlGeneralApi/batteries_brands/1?page=1&size=10"));

      if (response.statusCode == 200) {
        // ignore: avoid_print
        print("YA PASEEEEEEEE 200");
        
        // final List newItems = json.decode(response.body);
        // setState((){
        //   items = newItems;
        // });

      } else if (response.statusCode == 404) {
        // ignore: avoid_print
        print("Error 404");

        // _controllerSerial.clear();
      } else if (response.statusCode == 422) {
        // ignore: avoid_print
        print("Error 422");
      } else {
        // ignore: avoid_print
        print(response.body);
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}

// class PaginationList extends StatefulWidget {
//   const PaginationList({super.key});

//   @override
//   State<PaginationList> createState() => _PaginationListState();
// }

// class _PaginationListState extends State<PaginationList> {
//   List<String> items = [];
//   int page = 1;
//   int pageSize = 10;
//   bool isLoading = false;

//   @override
//   void initState() {
//     super.initState();
//     brandsList();
//   }

//   Future brandsList() async {
//     if (!isLoading) {
//       setState(() {
//         isLoading = true;
//       });

//       try {
//         // ignore: avoid_print
//         print("YA PASEEEEEEE");

//         final response = await http
//             .get(Uri.parse("$urlGeneralApi/batteries_brands/1?page=1&size=10"));

//         if (response.statusCode == 200) {
//           // ignore: avoid_print
//           print("YA PASEEEEEEEE 200");

//           final data = jsonDecode(response.body) as List<dynamic>;
//           setState(() {
//             items.addAll(data.map((item) => item.toString()));
//             isLoading = false;
//           });
//         } else if (response.statusCode == 404) {
//           // ignore: avoid_print
//           print("Error 404");

//           // _controllerSerial.clear();
//         } else if (response.statusCode == 422) {
//           // ignore: avoid_print
//           print("Error 422");
//         } else {
//           setState(() {
//             isLoading = false;
//           });
//           throw Exception('Failed to load data');
//         }
//       } catch (e) {
//         // ignore: avoid_print
//         print(e);
//       }
//     }

//     @override
//     Widget build(BuildContext context) {
//       return Container();
//     }
//   }
// }
