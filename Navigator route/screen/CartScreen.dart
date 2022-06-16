import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String>? todo =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart',
            style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Column(
            children: renderTodos(todo),
          ),
          const Divider(
            color: Colors.black,
            thickness: 5,
          ),
          Positioned(
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('\$126',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Buy',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

List<Widget> renderTodos(List<String>? todos) {
  if (todos == null || todos.isEmpty) {
    return [const Text("Data empty")];
  }
  return todos.map((todo) => Text(todo.toString())).toList();
}
