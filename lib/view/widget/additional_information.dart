import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
Widget additionalInformation(
    String wind, String humidity, String pressure, String feelsLike) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Pressure",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$wind",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$pressure",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidity",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Feellike",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$humidity",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$feelsLike",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
