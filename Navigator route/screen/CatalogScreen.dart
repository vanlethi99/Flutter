import 'dart:math';
import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final listItems = List.generate(30, (i) => "Item $i");
  final random = Random();
  List<String> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog',
            style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.yellow,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_bag,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/cart', arguments: selectedItems);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (_, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 42.0,
                  height: 42.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.primaries[
                                random.nextInt(Colors.primaries.length)]
                            [random.nextInt(9) * 100]),
                  ),
                ),
                Text(
                  listItems[index],
                  style: const TextStyle(fontSize: 24),
                ),
                if (selectedItems.contains(listItems[index]))
                  IconButton(
                    icon: const Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      List<String> tmp = selectedItems;
                      if (tmp.contains(listItems[index])) {
                        selectedItems.remove(listItems[index]);
                      }
                      setState(() {
                        selectedItems = tmp;
                      });
                    },
                  ),
                if (!selectedItems.contains(listItems[index]))
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle:
                          const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    onPressed: () => {
                      setState(() {
                        selectedItems = [...selectedItems, listItems[index]];
                      })
                    },
                    child: const Text('Add',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
