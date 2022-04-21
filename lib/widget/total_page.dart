import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shopping_getx/home/home_controller.dart';

// ignore: must_be_immutable
class Totalscreen extends StatelessWidget {
  Totalscreen({Key? key}) : super(key: key);
  late Homecontroller homecontroller;

  @override
  Widget build(BuildContext context) {
    homecontroller = Get.find<Homecontroller>();
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Total Items",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => Text(
                  homecontroller.sum.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.orange,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    "Go Back",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
