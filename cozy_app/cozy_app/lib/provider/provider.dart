import 'dart:convert';

import 'package:cozy_app/model/recommend.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'  as http;

class SpaceProvider extends ChangeNotifier{
  getRecommendSpace() async {
  //  buat var untuk nampung http url nya
    var result = await http.get('https://bwa-cozy.herokuapp.com/recommended-spaces');
    print(result.statusCode);
    print(result.body);

  //   pengembalian untuk status hasil dr request datnya
    if(result.statusCode == 200){
      List data = jsonDecode(result.body);
      List<Recommend> recommend = data.map((item) => Recommend.fromJson(item)).toList();
      return recommend;
      /** jadi guys ini untuk pengembalian gitu kira2 ini succes atu gak , klau succces terus status code nya
       * 200 maka dia bakal buat var baru  untk ngenampung datanya dari var result tadi yang udah kita buat
       * karena kita ambilnya body nya jadi .body , nah karena tadi api nya bentuknya list dan kita butuhnya
       * string makanya di convert pakai jsondecode, lanjut habis tu bikin var buat modelnya yg dia nge extend
       * si model yg udah kita buat yaitu recommend dan buat nama baru as like as recommend terus itu datnya
       * diambil dari var data yang udah kita buat kita buat dia map , dari item nya ke kita masukan ke model
       * yang kitaa buat berdasar model jsonya tadi . jangan lupa jadikan .toList karena bentuknya list terakhir
       * di return ke var recommend tadi ,
       * kalau else berarti kalau gagal dia bakal return ke data list kosong **/
    } else {
      return<Recommend>[];
    }
  }
}