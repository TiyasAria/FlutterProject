import 'package:flutter/foundation.dart';
import 'package:simple_app_state_management/model/catalog_model.dart';

class CartModel extends ChangeNotifier{
  // untuk menyambungkan dari data model ke si cart
  //maka akan dibuat var baru yg extends ke model catalog
  CatalogModel _catalog;

  //membuat list data dari si item cart nya
  final List<int> _itemsId = [];
  
//   membuat getter dari si model ctalog (getter => untuk mendapatkan datanya ) 
   CatalogModel get catalog => _catalog;
   
//    membuat setter(pengaturan datanya)
  set catalog(CatalogModel newCatalog){
    _catalog = newCatalog;
    notifyListeners();
  }
  
//  list item yang ada di cart 
List<Item> get items => _itemsId.map((id) => _catalog.getById(id)).toList();

//    total harga dari seluruh item
int get totalPrice => items.fold(0, (total, current) => total + current.price);

//menambahkan item kedalam cart
void add(Item item){
  _itemsId.add(item.id);
  notifyListeners();
}

void remove(Item item){
  _itemsId.remove(item.id);
  notifyListeners();
}

}