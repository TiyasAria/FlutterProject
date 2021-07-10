 import 'package:cozy_app/model/recommend.dart';
import 'package:flutter/material.dart';

enum CozyState {favorite}

 class CozyBloc with ChangeNotifier{
   List<CozyItem> favorite = [];
   void addItem(Recommend recommend){
     for(CozyItem item in favorite){
       if(item.recommend.name == recommend.name){
         item.increment();
         notifyListeners();
         return;
       }
     }
     favorite.add(CozyItem(recommend: recommend));
     notifyListeners();
   }
 }

 class CozyItem {
   CozyItem({ this.quantity = 1, @required this.recommend });
   int quantity;
   final Recommend recommend;

   void increment(){
     quantity++;
   }

   void decrement() {}
 }