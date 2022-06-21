import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../controller/Api.dart';


class HomeScreen extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {


  String NameCityDef = "City";
  num TempDef = 0;
  String DescriptionDef ="";
  var icon="";
  num WindDef =0;
  num PressureDef=0;
  num HumidityDef=0;

  //num? sample;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true, //3shan y5ly al app wa5d mn al background ykono 7aga w7da
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 500,
          leading: TextField(
              onSubmitted: (var city) {
                setState(() {
                  //var x = num.parse(city);
                  NameCityDef=city ;

                 // Api.getTemp(city);
                });
              },
              style: TextStyle(color: Colors.white, fontSize: 24),
              decoration: InputDecoration(
                //labelText: "City ... ",
                hoverColor: Colors.transparent,
                hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              )),



        ),
        body: Center(
          child: FutureBuilder(
            future: Api.getTemp(NameCityDef),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              //print(snapshot.data);
              return (snapshot.hasData)?
               Stack(
                  children: [


                 //Clear
                    (snapshot.data["weather"][0]["description"] == "clear sky")
                    ?Image.asset(
                      "images/bg-clear.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )


                 //Clouds
                    :(snapshot.data["weather"][0]["description"] == "few clouds")
                    ?Image.asset(
                      "images/bg-clouds.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "scattered clouds")
                    ?Image.asset(
                      "images/bg-clouds.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "broken clouds")
                    ?Image.asset(
                      "images/bg-clouds.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "overcast clouds")
                    ?Image.asset(
                      "images/bg-clouds.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )



                 //Rain & Drizzle
                    :(snapshot.data["weather"][0]["description"] == "shower rain")
                    ?Image.asset(
                      "images/bg-rain.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "rain")
                    ?Image.asset(
                      "images/bg-rain.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "light intensity shower rain")
                    ?Image.asset(
                      "images/bg-rain.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "heavy intensity shower rain")
                    ?Image.asset(
                      "images/bg-rain.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "ragged shower rain")
                    ?Image.asset(
                      "images/bg-rain.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "light intensity drizzle")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "drizzle")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "heavy intensity drizzle")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "light intensity drizzle rain")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "drizzle rain")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "heavy intensity drizzle rain")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "shower rain and drizzle")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "heavy shower rain and drizzle")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "shower drizzle")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "light rain")
                    ?Image.asset(
                      "images/bg-rain.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "moderate rain")
                    ?Image.asset(
                      "images/bg-rain.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "heavy intensity rain")
                    ?Image.asset(
                      "images/bg-rain.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "very heavy rain")
                    ?Image.asset(
                      "images/bg-rain.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "extreme rain")
                    ?Image.asset(
                      "images/bg-rain.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )



                 //Thunderstorm
                    :(snapshot.data["weather"][0]["description"] == "thunderstorm")
                    ?Image.asset(
                      "images/bg-thunderstorm.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "thunderstorm with light rain")
                    ?Image.asset(
                      "images/bg-thunderstorm.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "thunderstorm with rain")
                    ?Image.asset(
                      "images/bg-thunderstorm.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "thunderstorm with heavy rain")
                    ?Image.asset(
                      "images/bg-thunderstorm.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "light thunderstorm")
                    ?Image.asset(
                      "images/bg-thunderstorm.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "ragged thunderstorm")
                    ?Image.asset(
                      "images/bg-thunderstorm.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "thunderstorm with light drizzle")
                    ?Image.asset(
                      "images/bg-thunderstorm.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "thunderstorm with drizzle")
                    ?Image.asset(
                      "images/bg-thunderstorm.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "thunderstorm with heavy drizzle")
                    ?Image.asset(
                      "images/bg-thunderstorm.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )


                 //Snow
                    :(snapshot.data["weather"][0]["description"] == "Snow")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "light snow")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "Heavy snow")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "Sleet")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "Light shower")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "Shower sleet")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "Light rain and snow")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "Rain and snow")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "Light shower snow")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "Shower snow")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "Heavy shower snow")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "freezing rain")
                    ?Image.asset(
                      "images/bg-snow.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )



                  //Mist
                    :(snapshot.data["weather"][0]["description"] == "mist")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "Smoke")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )


                    :(snapshot.data["weather"][0]["description"] == "Haze")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )
                    :(snapshot.data["weather"][0]["description"] == "sand/ dust whirls")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )



                    :(snapshot.data["weather"][0]["description"] == "fog")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "sand")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "dust")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "volcanic ash")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "squalls")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )

                    :(snapshot.data["weather"][0]["description"] == "tornado")
                    ?Image.asset(
                      "images/bg-drizzle.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )



                    :Image.asset(
                      "images/bg-default.jpg",
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    Container(//3shan n2ll al opacity bt3t al background image
                      decoration: BoxDecoration(color: Colors.black38),
                    ),
                    Container(
                      child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            //al asasy
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  //elly m2smen feh al 7gat
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      //elly gwah city
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 150,
                                        ),
                                        Text("${snapshot.data["name"]}",
                                          style: TextStyle(
                                              fontSize: fontCityName,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      //elly gwah al temp
                                      children: [
                                        Text("${snapshot.data["main"]["temp"].round()} °C",

                                          style: TextStyle(
                                              fontSize: fontTemp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),


                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  //Clear
                                  (snapshot.data["weather"][0]["id"] == 800 && snapshot.data["weather"][0]["description"] == "clear sky" && snapshot.data["weather"][0]["icon"] == "01d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-clearsky-day.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )
                                      :(snapshot.data["weather"][0]["id"] == 800 && snapshot.data["weather"][0]["description"] == "clear sky" && snapshot.data["weather"][0]["icon"] == "01n")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-clearsky-night.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )



                                  //Clouds
                                      :(snapshot.data["weather"][0]["id"] == 801 && snapshot.data["weather"][0]["description"] == "few clouds" && snapshot.data["weather"][0]["icon"] == "02d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-fewclouds-day.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )
                                      :(snapshot.data["weather"][0]["id"] == 801 && snapshot.data["weather"][0]["description"] == "few clouds" && snapshot.data["weather"][0]["icon"] == "02n")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-fewclouds-night.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 802 && snapshot.data["weather"][0]["description"] == "scattered clouds" && snapshot.data["weather"][0]["icon"] == "03d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-scatteredclouds.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )
                                      :(snapshot.data["weather"][0]["id"] == 802 && snapshot.data["weather"][0]["description"] == "scattered clouds" && snapshot.data["weather"][0]["icon"] == "03n")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-scatteredclouds.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 803 && snapshot.data["weather"][0]["description"] == "broken clouds" && snapshot.data["weather"][0]["icon"] == "04d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-brokencloulds.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )
                                      :(snapshot.data["weather"][0]["id"] == 803 && snapshot.data["weather"][0]["description"] == "broken clouds" && snapshot.data["weather"][0]["icon"] == "04n")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-brokencloulds.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 804 && snapshot.data["weather"][0]["description"] == "overcast clouds" && snapshot.data["weather"][0]["icon"] == "04d" )
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-brokencloulds.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )
                                      :(snapshot.data["weather"][0]["id"] == 804 && snapshot.data["weather"][0]["description"] == "overcast clouds" && snapshot.data["weather"][0]["icon"] == "04n")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-brokencloulds.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )



                                  //Rain & Drizzle
                                      :(snapshot.data["weather"][0]["id"] == 520 && snapshot.data["weather"][0]["description"] == "light intensity shower rain" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 521 && snapshot.data["weather"][0]["description"] == "shower rain" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )
                                      :(snapshot.data["weather"][0]["description"] == "shower rain" && snapshot.data["weather"][0]["icon"] == "09n")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 522 && snapshot.data["weather"][0]["description"] == "heavy intensity shower rain" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 531 && snapshot.data["weather"][0]["description"] == "ragged shower rain" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 300 && snapshot.data["weather"][0]["description"] == "light intensity drizzle" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 301 && snapshot.data["weather"][0]["description"] == "drizzle" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 302 && snapshot.data["weather"][0]["description"] == "heavy intensity drizzle" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 310 && snapshot.data["weather"][0]["description"] == "light intensity drizzle rain" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 311 && snapshot.data["weather"][0]["description"] == "drizzle rain" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 312 && snapshot.data["weather"][0]["description"] == "heavy intensity drizzle rain" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 313 && snapshot.data["weather"][0]["description"] == "shower rain and drizzle" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 314 && snapshot.data["weather"][0]["description"] == "heavy shower rain and drizzle" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 321 && snapshot.data["weather"][0]["description"] == "shower drizzle" && snapshot.data["weather"][0]["icon"] == "09d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-showerrain.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["description"] == "rain" && snapshot.data["weather"][0]["icon"] == "10d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-rain-day.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )
                                      :(snapshot.data["weather"][0]["description"] == "rain" && snapshot.data["weather"][0]["icon"] == "10n")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-rain-night.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 500 && snapshot.data["weather"][0]["description"] == "light rain" && snapshot.data["weather"][0]["icon"] == "10d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-rain-day.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 501 && snapshot.data["weather"][0]["description"] == "moderate rain" && snapshot.data["weather"][0]["icon"] == "10d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-rain-day.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 502 && snapshot.data["weather"][0]["description"] == "heavy intensity rain" && snapshot.data["weather"][0]["icon"] == "10d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-rain-day.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 503 && snapshot.data["weather"][0]["description"] == "very heavy rain" && snapshot.data["weather"][0]["icon"] == "10d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-rain-day.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 504 && snapshot.data["weather"][0]["description"] == "extreme rain" && snapshot.data["weather"][0]["icon"] == "10d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-rain-day.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )



                                  //Thunderstorm
                                      :(snapshot.data["weather"][0]["id"] == 211 && snapshot.data["weather"][0]["description"] == "thunderstorm" && snapshot.data["weather"][0]["icon"] == "11d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-thunderstorm.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )
                                      :(snapshot.data["weather"][0]["description"] == "thunderstorm" && snapshot.data["weather"][0]["icon"] == "11n")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-thunderstorm.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 200 && snapshot.data["weather"][0]["description"] == "thunderstorm with light rain" && snapshot.data["weather"][0]["icon"] == "11d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-thunderstorm.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 201 && snapshot.data["weather"][0]["description"] == "thunderstorm with rain" && snapshot.data["weather"][0]["icon"] == "11d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-thunderstorm.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 202 && snapshot.data["weather"][0]["description"] == "thunderstorm with heavy rain" && snapshot.data["weather"][0]["icon"] == "11d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-thunderstorm.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 210 && snapshot.data["weather"][0]["description"] == "light thunderstorm" && snapshot.data["weather"][0]["icon"] == "11d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-thunderstorm.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 212 && snapshot.data["weather"][0]["description"] == "heavy thunderstorm" && snapshot.data["weather"][0]["icon"] == "11d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-thunderstorm.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 221 && snapshot.data["weather"][0]["description"] == "ragged thunderstorm" && snapshot.data["weather"][0]["icon"] == "11d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-thunderstorm.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 230 && snapshot.data["weather"][0]["description"] == "thunderstorm with light drizzle" && snapshot.data["weather"][0]["icon"] == "11d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-thunderstorm.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 231 && snapshot.data["weather"][0]["description"] == "thunderstorm with drizzle" && snapshot.data["weather"][0]["icon"] == "11d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-thunderstorm.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 232 && snapshot.data["weather"][0]["description"] == "thunderstorm with heavy drizzle" && snapshot.data["weather"][0]["icon"] == "11d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-thunderstorm.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )


                                  //Snow
                                      :(snapshot.data["weather"][0]["id"] == 600 && snapshot.data["weather"][0]["description"] == "light snow" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 601 && snapshot.data["weather"][0]["description"] == "Snow" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )
                                      :(snapshot.data["weather"][0]["description"] == "snow" && snapshot.data["weather"][0]["icon"] == "13n")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 602 && snapshot.data["weather"][0]["description"] == "Heavy snow" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 611 && snapshot.data["weather"][0]["description"] == "Sleet" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 612 && snapshot.data["weather"][0]["description"] == "Light shower sleet" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 613 && snapshot.data["weather"][0]["description"] == "Shower sleet" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 615 && snapshot.data["weather"][0]["description"] == "Light rain and snow" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 616 && snapshot.data["weather"][0]["description"] == "Rain and snow" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 620 && snapshot.data["weather"][0]["description"] == "Light shower snow" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 621 && snapshot.data["weather"][0]["description"] == "Shower snow" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 622 && snapshot.data["weather"][0]["description"] == "Heavy shower snow" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 511 && snapshot.data["weather"][0]["description"] == "freezing rain" && snapshot.data["weather"][0]["icon"] == "13d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/icon-snow.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )



                                  //Mist
                                      :(snapshot.data["weather"][0]["id"] == 701 && snapshot.data["weather"][0]["description"] == "mist" && snapshot.data["weather"][0]["icon"] == "50d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/mist-icon.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )
                                      :(snapshot.data["weather"][0]["description"] == "mist" && snapshot.data["weather"][0]["icon"] == "50n")
                                      ?Row(
                                    children: [
                                      Image.asset("images/mist-icon.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 711 && snapshot.data["weather"][0]["description"] == "Smoke" && snapshot.data["weather"][0]["icon"] == "50d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/mist-icon.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 721 && snapshot.data["weather"][0]["description"] == "Haze" && snapshot.data["weather"][0]["icon"] == "50d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/mist-icon.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 731 && snapshot.data["weather"][0]["description"] == "sand/ dust whirls" && snapshot.data["weather"][0]["icon"] == "50d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/mist-icon.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 741 && snapshot.data["weather"][0]["description"] == "fog" && snapshot.data["weather"][0]["icon"] == "50d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/mist-icon.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 751 && snapshot.data["weather"][0]["description"] == "sand" && snapshot.data["weather"][0]["icon"] == "50d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/mist-icon.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 761 && snapshot.data["weather"][0]["description"] == "dust" && snapshot.data["weather"][0]["icon"] == "50d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/mist-icon.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 762 && snapshot.data["weather"][0]["description"] == "volcanic ash" && snapshot.data["weather"][0]["icon"] == "50d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/mist-icon.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 771 && snapshot.data["weather"][0]["description"] == "squalls" && snapshot.data["weather"][0]["icon"] == "50d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/mist-icon.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :(snapshot.data["weather"][0]["id"] == 781 && snapshot.data["weather"][0]["description"] == "tornado" && snapshot.data["weather"][0]["icon"] == "50d")
                                      ?Row(
                                    children: [
                                      Image.asset("images/mist-icon.png",height: 40,width: 40,),
                                      Text(
                                        "${snapshot.data["weather"][0]["description"]}",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                      :Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(bottom:8)
                                          ,child: Image.asset("images/icon-default.png",height: 30,width:30,)),
                                      Text(
                                        "  Description of Weather",
                                        style: TextStyle(
                                            fontSize: fontDescription,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),

                                    ],
                                  )

                                  /*:(snapshot.data["weather"][0]["description"] == "few clouds")
                                      ? Image.asset("images/icon-clearsky-day.png",height: 40,width: 40,)
                                      :(snapshot.data["weather"][0]["description"] == "scattered clouds")
                                      ?Image.asset(
                                    "images/bg-clouds.jpg",
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  )
                                      :(snapshot.data["weather"][0]["description"] == "broken clouds")
                                      ?Image.asset(
                                    "images/bg-clouds.jpg",
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  )
                                      :(snapshot.data["weather"][0]["description"] == "shower rain")
                                      ?Image.asset(
                                    "images/bg-rain.jpg",
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  )
                                      :(snapshot.data["weather"][0]["description"] == "rain")
                                      ?Image.asset(
                                    "images/bg-rain.jpg",
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  )
                                      :(snapshot.data["weather"][0]["description"] == "thunderstorm")
                                      ?Image.asset(
                                    "images/bg-thunderstorm.jpg",
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  )
                                      :(snapshot.data["weather"][0]["description"] == "mist")//ht2kd mnha lsa
                                      ?Image.asset(
                                    "images/bg-drizzle.jpg",
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  )
                                      :(snapshot.data["weather"][0]["description"] == "snow")
                                      ?Image.asset(
                                    "images/bg-snow.jpg",
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  )
                                      :Image.asset(
                                    "images/bg-snow.jpg",
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  ),*/
                                  /*Image.asset("images/icon-clearsky-day.png",height: 40,width: 40,),
                                  Text("${snapshot.data["weather"][0]["description"]}",

                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),*/
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 40),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white30)),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Wind",
                                            style: TextStyle(
                                                fontSize: fontAddtionalInfoName,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text((snapshot.data["wind"]["speed"] == "0")
                                              ?"0"
                                              : "${snapshot.data["wind"]["speed"]}",
                                            style: TextStyle(
                                                fontSize: fontAddtionalInfo,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "km/hr",
                                            style: TextStyle(
                                                fontSize: fontAddtionalInfoName,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Pressure",
                                            style: TextStyle(
                                                fontSize: fontAddtionalInfoName,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "${snapshot.data["main"]["pressure"].round()}",
                                            style: TextStyle(
                                                fontSize: fontAddtionalInfo,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "hPa",
                                            style: TextStyle(
                                                fontSize: fontAddtionalInfoName,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Humidity",
                                            style: TextStyle(
                                                fontSize: fontAddtionalInfoName,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "${snapshot.data["main"]["humidity"]}",
                                            style: TextStyle(
                                                fontSize: fontAddtionalInfo,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "%",
                                            style: TextStyle(
                                                fontSize: fontAddtionalInfoName,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )),
                    )
                  ]
                  ,
                )
              :Center(
                  child: CircularProgressIndicator(
                  color: Colors.black));

            },
          ),
        )
    );
  }
}

