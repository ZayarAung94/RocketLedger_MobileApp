import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppMessage {
  static errorMessage({String? message}) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        'Opps!!! Something is wrong.',
        message ?? "",
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        duration: const Duration(milliseconds: 3000),
        backgroundColor: Colors.red.withOpacity(0.3),
        colorText: Colors.white,
      );
    }
  }

  static premiumRequire() {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        'Opps!!! You have no permission to do this.',
        "ယခုလုပ်ဆောင်မှုကို အသုံးပြုနိုင်ရန်အတွက် ဆော့ဝဲကို ဝယ်ယူရန်လိုအပ်ပါသည်။",
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        duration: const Duration(milliseconds: 3000),
        icon: const Icon(Icons.error_outline, color: Colors.amber),
        backgroundColor: Colors.amber.shade100.withOpacity(0.3),
        colorText: Colors.white,
      );
    }
  }
}
