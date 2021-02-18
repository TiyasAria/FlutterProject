import 'package:weather_app/common/utils.dart';
import 'package:weather_app/model/location.dart';

import 'network.dart';

class WeatherModel{
Future <dynamic> getCity(cityName) async{
  String endpoint = 'weather?q=$cityName&appid=$apiKey';
  String url = baseUrl + endpoint;
  Network networkHelper = Network(url);
  var weatherData = await networkHelper.getData();
  return weatherData;
}
Future<dynamic> getClimData() async{
  Location location = Location();
  await location.getCurrentLocation();
  double latitude = location.latitude;
  double longitude = location.longitude;
  print(latitude);
  print(longitude);
  String endPoint = 'weather?lat=$latitude&lon=$longitude&appid=$apiKey';
  String url = baseUrl + endPoint;
  Network networkHelper = Network(url);
  var weatherData = await networkHelper.getData();
  return weatherData;
}
}

