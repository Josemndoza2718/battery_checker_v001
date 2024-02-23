import 'package:flutter/material.dart';

class BrandsListProvider extends ChangeNotifier  {

  BrandList() {
    print("LISTAS DE MARCAS");

    getBrandsList();
  }

  getBrandsList() async {
    print("getBrandsList");
  }

}