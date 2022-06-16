import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Ex2 extends StatefulWidget {
  const Ex2({Key? key}) : super(key: key);

  @override
  State<Ex2> createState() => _Ex2State();
}

class _Ex2State extends State<Ex2> {
  var cardInfo = [
    {
      'name': 'Dr. Jonh Doe',
      'level': 'CUHK Medical Centre',
      'rating': '4.8',
      'reviewTotal': 156
    },
    {
      'name': 'Dr. Jonh Doe',
      'level': 'CUHK Medical Centre',
      'rating': '4.8',
      'reviewTotal': 156
    },
    {
      'name': 'Dr. Jonh Doe',
      'level': 'CUHK Medical Centre',
      'rating': '4.8',
      'reviewTotal': 156
    },
    {
      'name': 'Dr. Jonh Doe',
      'level': 'CUHK Medical Centre',
      'rating': '4.8',
      'reviewTotal': 156
    },
    {
      'name': 'Dr. Jonh Doe',
      'level': 'CUHK Medical Centre',
      'rating': '4.8',
      'reviewTotal': 156
    },
    {
      'name': 'Dr. Jonh Doe',
      'level': 'CUHK Medical Centre',
      'rating': '4.8',
      'reviewTotal': 156
    },
    {
      'name': 'Dr. Jonh Doe',
      'level': 'CUHK Medical Centre',
      'rating': '4.8',
      'reviewTotal': 156
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Therapist', style: TextStyle(color: Colors.black)),
          actions: const <Widget>[
            IconButton(
              icon: Icon(
                Icons.filter_list,
                color: Colors.black,
              ),
              onPressed: null,
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 160.0,
                ),
                items: cardInfo.map((i) {
                  // return Builder(
                  //   builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(12)),
                  );
                  //   },
                  // );
                }).toList(),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Nearby Therapists',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cardInfo.length,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 160,
                        height: 110,
                        margin: const EdgeInsets.only(top: 8, bottom: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Container(
                        height: 120,
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "${cardInfo[index]['name']}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              "Level: ${cardInfo[index]['level']}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal),
                            ),
                            Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.star,
                                  color: Colors.black,
                                ),
                                Text(
                                  "${cardInfo[index]['rating']}     (${cardInfo[index]['reviewTotal']} reviews)",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
