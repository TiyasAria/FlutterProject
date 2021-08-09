import 'package:flutter/material.dart';

class CatalogModel {
  static List<String> itemNames = [
    'Kopi Paht',
    'Kopi manis',
    'Kopi aem',
    'Kopi kecut',
    'Kopi Jahe',
    'Kopi susu',
    'Kopi teh',
    'Kopi teh',
    'Kopi teh',
    'Kopi teh',
  ];

//   get by item idnya
Item getById(int id) => Item(id,
  itemNames[id % itemNames.length]);

// untuk mendapat kan posisi dari itemnya
Item getByPosition(int position) {
  return getById(position);
}
}

class Item{
  //clas yang berisi dari variable2 modelnya
  final int id;
  final String name;
  final Color color;
  final int price = 6;

  // make a constructor for the var , dan untuk colornya diberi warna primari yang warna warni
  Item(this.id, this.name)
  : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator == (Object other) => other is Item && other.id == id;

}