import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../model/WeatherModel.dart';


class Api {

  static String ApiKey ="4d207a700865258b3344c5a8776a2bf1";
  static List<WeatherModel> listTemp = [];

  static getTemp(String city) async {
    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$ApiKey&units=metric");

    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    //print(responsebody);

    return responsebody;
  }

/*  static getTemp(int woeid) async
  {
    var url =Uri.parse("url$woeid");
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body)["woied"];

  }*/
}
