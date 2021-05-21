import 'package:flutter/material.dart';
import 'package:scarlett_app/model/scarlett_products.dart';

enum ScarlettState {normal, details, favorite}

class ScarlettStoreBloc with ChangeNotifier{
  ScarlettState scarlettState = ScarlettState.normal;
  List<ScarlettProduct> catalog = List.unmodifiable(scarlettProducts);
  List<ScarlettProductItem> favorite = [];

  void changeToNormal() {
    scarlettState = ScarlettState.normal;
    notifyListeners();
  }

  void changeToFavorite(){
    scarlettState = ScarlettState.favorite;
    notifyListeners();
  }
  void deleteProduct(ScarlettProductItem productItem){
    favorite.remove(productItem);
    notifyListeners();
  }
  void addProduct(ScarlettProduct product){
    for(ScarlettProductItem item in favorite){
      if(item.product.name == product.name){
        item.increment();
        notifyListeners();
        return;
      }
    }
    favorite.add(ScarlettProductItem(product: product));
    notifyListeners();
  }

  int totalFavoriteElements() => favorite.fold<int>(
      0, (previousValue, element) => previousValue + element.quantity);

}

class ScarlettProductItem {
  ScarlettProductItem({this.quantity = 1, @required this.product});

  int quantity;
  final ScarlettProduct product;

  void increment(){
    quantity++;
  }

  void decrement(){}
}