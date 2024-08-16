import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var ImgUrls = [
      'https://rukminim2.flixcart.com/image/832/832/xif0q/t-shirt/i/e/l/l-ausk0556-ausk-original-imagt4syszf9gq5f.jpeg?q=70&crop=true',
      'https://rukminim2.flixcart.com/image/832/832/xif0q/t-shirt/r/z/l/s-gucci-tshirt-sti-original-imahyyzs4kpgbfby.jpeg?q=70&crop=true',
      'https://m.media-amazon.com/images/I/71zRMNf2uvL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/41oLEGgijDL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/81gHzitlpsL._AC_SX569_.jpg',
      'https://m.media-amazon.com/images/I/51dPz+dQTZL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/51ymWaWO2mL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/71Xgx41+NyL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/81qu3nXwc+L._AC_SX569_.jpg',
      'https://m.media-amazon.com/images/I/51dPz+dQTZL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/51yHL2fq9DL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/71gBQOlwuHL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/71cpG1tSisL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/717Ay1OQ6ZL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/81f8Wtfa0WL._AC_SX569_.jpg',
      'https://m.media-amazon.com/images/I/81HZfmop2qS._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/71qsgN7duuL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/819AlR14qyL._AC_SX569_.jpg',
      'https://m.media-amazon.com/images/I/81YOJm4PSbS._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/61TFwLnRngL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/71L4tro44ML._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/81Jb8LZKohL._AC_SX569_.jpg',
      'https://m.media-amazon.com/images/I/71T-opdfScL._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/81qY09mAi7L._AC_SX679_.jpg',
      'https://m.media-amazon.com/images/I/81h9q1Nm+9L._AC_SX569_.jpg',
      'https://m.media-amazon.com/images/I/81CRt8tjc3L._AC_SX569_.jpg',
      'https://m.media-amazon.com/images/I/81YfiCdLF4L._AC_SX569_.jpg',
      'https://m.media-amazon.com/images/I/81oi32BML7L._AC_SX679_.jpg',
    ];

    var NameAndDetails = {
      {"name": "Slim fit casual", "model": "LSR22"},
      {"name": "Slim fit casual", "model": "LSR22"}
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Discover",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: const [
            Stack(
              children: [
                Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: 35,
                ),
                Positioned(
                  right: 0,
                  top: 2,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 10,
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 55,
                      width: 290,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 246, 237, 237),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.all(12)),
                          Icon(
                            Icons.search_outlined,
                            size: 35,
                          ),
                          Text(
                            "Search Anything",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.filter_list,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 45,
                        width: 75,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: const Text(
                          "All",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 75,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 246, 237, 237),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: const Text("Men",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 45,
                        width: 75,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 246, 237, 237),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: const Text("Women",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 45,
                        width: 75,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 246, 237, 237),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: const Text("Kids",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 45,
                        width: 75,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 246, 237, 237),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: const Text("adults",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 45,
                        width: 75,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 246, 237, 237),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: const Text("Others",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  itemCount: ImgUrls.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 25,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) => Stack(
                    children: [
                      Container(
                        color: Colors.blue,
                        child: Image.network(
                          ImgUrls[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.only(top: 3, left: 4),
                          color: Colors.white,
                          width: 172,
                          height: 45,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Regular fit slogan",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Text(
                                "LSR21",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 47, 40, 40)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
