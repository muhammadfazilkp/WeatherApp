import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_application/api/weather_model.dart';
class WeatherData{

  Future<Weather>getData(String?  data) async{
    var location='Kerala';
    var uricall=Uri.parse('http://api.weatherapi.com/v1/current.json?key=34f718cc4e554543a68131839231709&q=${data},$location&aqi=no');
    var response= await http.get(uricall);
    var body=jsonDecode(response.body);
    return  Weather.fromJson(body);

  }
  

}