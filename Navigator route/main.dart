import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:navigate_app/screen/CartScreen.dart';
import 'package:navigate_app/screen/CatalogScreen.dart';
import 'package:navigate_app/screen/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // enableLog: true,
      // debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/catalog': (context) => const CatalogScreen(),
        '/cart': (context) => const CartScreen(),
      },
    );
  }
}
