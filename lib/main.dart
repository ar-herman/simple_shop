import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shopping_getx/home/home_bindings.dart';
import 'package:simple_shopping_getx/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/home",
      getPages: [
        GetPage(
            name: "/home", page: () => Homescreen(), binding: Homebinding()),
      ],
    );
  }
}
