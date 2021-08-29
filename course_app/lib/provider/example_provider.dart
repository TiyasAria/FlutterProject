import 'package:flutter/foundation.dart';

//pertama kita buat class untuk setState nya atau perubahan tampilan widgetnya yaitu dengan Change Notifier ini
// dan jangan lupa import fundation ,
class ExampleProvider extends ChangeNotifier{
/**
 * Oke pertama kita buat var datanya dg tipe privat agar tidak bisa di akses kelas lain,dan untuk mengaksesnya harus menggunakan func dalam setter
 * Setter itu untuk memasukkan datanya, getter untuk mendpatkan datanya, klau pakai late harus di assign dulu valuenya kayak
 * dibawah ini
 **/

   late String _data = "";
//fun untuk setternya
  void setDataString(String data){
    this._data = data;
    //kayak set state si notify ini
    notifyListeners();
  }
//   getter kalau datanya ada param
/**
 * String getDataString(){
    return this._data;
  }
    **/
// getter untuk yang gak ada parameternya
String get getDataString => this._data;


}