import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/controller/connectivity_provider.dart';
import 'package:weatherapp/controller/weather_provider.dart';
import 'package:weatherapp/view/home/widget/additional_information.dart';

import 'widget/currentweather_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<InternetConnectivityProvider>(context, listen: false)
        .getInternetConnectivity(context);
    print("not");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 0.0,
        title: const Text(
          "Weather",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Consumer<WeatherProvider>(builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  onFieldSubmitted: (String place) {
                    value.getData(place);
                  },
                  controller: value.searchController,
                  cursorColor: Colors.black,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 18, left: 10),
                    isDense: true,
                    hintText: "Search",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.location_searching_sharp,
                        size: 26,
                      ),
                    ),
                    suffixIcon: value.searchController.text.isNotEmpty
                        ? IconButton(
                            onPressed: () {
                              value.searchController.clear();
                            },
                            icon: const Icon(
                              Icons.cancel,
                              color: Colors.grey,
                            ),
                          )
                        : null,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 100,
                  width: 100,
                  child: Lottie.asset('asset/animation_lmyqvho1.json')),
              if (value.data != null)
                currentWeather(
                  '${value.data!.temp}',
                  value.searchController.text.isEmpty
                      ? "Calicut"
                      : value.searchController.text,
                ),
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                "Additional Information",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xdd212121),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Divider(
                thickness: 5,
                color: Colors.black,
              ),
              const SizedBox(
                height: 30.0,
              ),
              if (value.data != null)
                additionalInformation(
                  "${value.data!.wind}",
                  "${value.data!.humidity}",
                  "${value.data!.pressure}",
                  "${value.data!.feels_like}",
                ),
            ],
          );
        }),
      ),
    );
  }
}
