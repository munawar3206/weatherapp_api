import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);

Widget additionalInformation(
  String wind,
  String humidity,
  String pressure,
  String feelsLike,
) {
  return SizedBox(
    height: 200,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 50,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://imgs.search.brave.com/kXfKtp_Up-Bt5NyH2Z2qaeR_x9NpVHKuBGuXDYaQc38/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTEy/NDQ4NDcxOS9waG90/by93aW5kc29jay13/aXRoLWNsb3VkeS1z/a3kuanBnP3M9NjEy/eDYxMiZ3PTAmaz0y/MCZjPVU0QUhRWUhh/MmljeGx6V0pmSUJF/dmZHQjVSVWotMlF6/ajRFMElDX0U4b1E9'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        "Wind",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.0,
                                            color: Colors.white),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        wind,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://imgs.search.brave.com/63ZYS7swuMAGGPagOzweKvewGgH8rmJbLYTg_ZtCJbs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJhY2Nlc3Mu/Y29tL2Z1bGwvMTU0/MDAwMi5qcGc'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                children: [
                                  const Text(
                                    "Pressure",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    pressure,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15.0,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://imgs.search.brave.com/I7pZNntcfs6bQ3zDBDNgrwxGqJ9aKv_oDo-QL78NbCY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/MzQyNzQ5ODg3NTct/YTI4YmYxYTU3YzE3/P2l4bGliPXJiLTQu/MC4zJml4aWQ9TTN3/eE1qQTNmREI4TUh4/elpXRnlZMmg4TVRS/OGZIZGxZWFJvWlhK/OFpXNThNSHg4TUh4/OGZEQT0mdz0xMDAw/JnE9ODA.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    "Humidity",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    humidity,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15.0,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://imgs.search.brave.com/jQcixgd26dlQ1KIwviRfX3Cxq8ldXgtlAYgG_H0w33s/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAxLzIwLzg4LzQz/LzM2MF9GXzEyMDg4/NDM0Nl9PQ0JWQnJU/SmJvSzdVeWFzSk5D/VG5UdGMyNWtJNTU2/Si5qcGc'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    "Real feel",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    feelsLike,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15.0,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
