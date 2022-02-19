import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SnackBarwidget {
  static showSnack(String m) {
    return ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
      content: Text(
        m,
        style: const TextStyle(color: Colors.white),
      ),
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
          textColor: Colors.white,
          label: 'FECHAR',
          onPressed: () => ScaffoldMessenger.of(Get.context!).clearSnackBars()),
    ));
  }
}
