import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shopping_getx/home/home_controller.dart';
import 'package:simple_shopping_getx/widget/total_page.dart';

// ignore: must_be_immutable
class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);

  late Homecontroller homecontroller;

  @override
  Widget build(BuildContext context) {
    homecontroller = Get.find<Homecontroller>();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  "Books",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    onPressed: homecontroller.increment,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Obx(
                  () => Text(
                    homecontroller.books.toString(),
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    onPressed: homecontroller.decrement,
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Pens",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    onPressed: homecontroller.incrementPens,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Obx(
                  () => Text(
                    homecontroller.pens.toString(),
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    onPressed: homecontroller.decrementPens,
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(Totalscreen());
                    },
                    child: const Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
