import 'package:flutter/material.dart';

class Ex3 extends StatelessWidget {
  const Ex3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GENERALS',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.orange)),
        leading: IconButton(
          icon: const Icon(Icons.flare_sharp, color: Colors.green),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'AVERAGE SALARY',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            decoration: BoxDecoration(
              gradient:
                  const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
              borderRadius: BorderRadius.circular(4),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent, // background
                minimumSize: const Size(double.infinity, 40),
              ),
              onPressed: () {},
              child: const Text("\$ 1300/per month",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            width: double.infinity,
            height: 200,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "NGON NGU \nMOI NHAT",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Fluter 1.0",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.deepPurpleAccent)),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "HIGHEST \nSALARY",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("\$2500",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.deepPurpleAccent)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Most hired job?",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(height: 140),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Text(
                "Item8",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              Text(
                "Item 1",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              Text(
                "LongLongItem",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.green),
              ),
              Text(
                "AngularJS",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.deepPurpleAccent),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Text(
                "NodeJS",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.pinkAccent),
              ),
              Text(
                "React-Native",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.red),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "PHP",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.yellow.shade600),
              ),
              const Text(
                "VueJS",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.blue),
              ),
              const Text(
                "Item9",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.green),
              ),
              const Text(
                "Item6",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
