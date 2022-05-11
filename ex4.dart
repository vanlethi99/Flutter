import 'package:flutter/material.dart';

class Ex4 extends StatefulWidget {
  const Ex4({Key? key}) : super(key: key);

  @override
  State<Ex4> createState() => _Ex4State();
}

class _Ex4State extends State<Ex4> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Enouvo - Flutter Training Series'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(4, 1)),
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                children: <Widget>[
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 20),
                  Text(
                    'Make a coffee',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(4, 1)),
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const SizedBox(width: 20),
                  Center(
                    child: ClipOval(
                      child: Image.network(
                        'https://kenh14cdn.com/203336854389633024/2022/3/1/nguoidoi-1646152343119133480980.jpeg',
                        height: 50.0,
                        width: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bruce Wayne',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      const Text(
                        "I'm Batman",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '2022-04-15 00:45',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.red,
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child:
                            Text("DC", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(4, 1)),
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.black),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            ClipOval(
                              child: Image.network(
                                'https://kenh14cdn.com/203336854389633024/2022/3/1/nguoidoi-1646152343119133480980.jpeg',
                                height: 50.0,
                                width: 50.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text(
                                  'Bruce Wayne',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "DC - Batman",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "\"Batman ventures into Gotham City's underworld when a sadistic killer leaves behind a trail of cryptic clues. As the evidence begins to lead closer to home and the scale of the perpetrator's plans become clear\"",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 0.5),
                            ),
                            hintText: 'Type your message...',
                          ),
                        )),
                        const SizedBox(width: 10),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          onPressed: null,
                          child: const Text('Reply',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
