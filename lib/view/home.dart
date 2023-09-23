import 'package:flutter/material.dart';
import 'package:weatherapp/view/widget/additional_information.dart';
import 'package:weatherapp/view/widget/currentweather_widget.dart';
import 'package:weatherapp/model/weather_model.dart';
import 'package:weatherapp/services/weather_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;
  TextEditingController searchController = TextEditingController();

  Future<void> getData(String location) async {
    data = await client.getCurrentWeather(location);
    setState(() {}); // Update the UI with the fetched data
  }

  @override
  void initState() {
    super.initState();
    getData("KUNNUMPURAM"); // Default location
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 5, 5),
        elevation: 0,
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Search TextField
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  labelText: "Enter Location",
                  suffixIcon: IconButton(
                    onPressed: () {
                      String location = searchController.text;
                      getData(location);
                    },
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            if (data != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  currentWeather(
                    Icons.wb_sunny_outlined,
                    "${data!.temp}",
                    "${data!.cityName}",
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Text(
                    "Additional Information",
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  SizedBox(
                    height: 20.0,
                  ),
                  additionalInformation(
                    "${data!.wind}",
                    "${data!.humidity}",
                    "${data!.pressure}",
                    "${data!.feels_like}",
                  )
                ],
              ),
            if (data == null)
              Center(
                child: CircularProgressIndicator(),
              ),
          ],
        ),
      ),
    );
  }
}
