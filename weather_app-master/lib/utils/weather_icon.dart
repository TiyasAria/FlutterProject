import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class WeatherIcon{
  IconData getWeatherIcon(int condition) {
    if (condition < 300) {
      return FlutterIcons.wi_thunderstorm_wea;
    } else if (condition < 400) {
      return FlutterIcons.wi_raindrops_wea;
    } else if (condition < 600) {
      return FlutterIcons.wi_rain_wea;
    } else if (condition < 700) {
      return FlutterIcons.wi_day_snow_wea;
    } else if (condition < 800) {
      return FlutterIcons.wi_fog_wea;
    } else if (condition == 800) {
      return FlutterIcons.wi_wu_clear_wea;
    } else if (condition <= 804) {
      return FlutterIcons.wi_cloud_wea;
    } else {
      return FlutterIcons.weather_night_mco;
    }
  }
}