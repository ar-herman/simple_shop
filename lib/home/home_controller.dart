import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homecontroller extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum => books.value + pens.value;

  void increment() {
    books.value++;
  }

  void decrement() {
    if (books.value <= 0) {
      Get.snackbar(
        "Buying Books",
        "Can not be less than zero",
        icon: const Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: const Duration(seconds: 3),
      );
    } else {
      books.value--;
    }
  }

  //

  void incrementPens() {
    pens.value++;
  }

  void decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar(
        "Buying Pens",
        "Can not be less than zero",
        icon: const Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: const Duration(seconds: 3),
      );
    } else {
      pens.value--;
    }
  }
}
