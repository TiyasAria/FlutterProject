
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/model/weather_model.dart';

import 'search_view.dart';

class ProgressView extends StatefulWidget {
  @override
  _ProgressViewState createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  @override
  //inisialisasi state
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitDoubleBounce(
        color: Colors.white,
        size: 120.0,

      ),
    );
  }

  getLocation() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getClimData();
    Navigator.push(context,MaterialPageRoute(builder: (context){
      return SearchView(
        weatherData : weatherData,
      );
    }));

  }
}


