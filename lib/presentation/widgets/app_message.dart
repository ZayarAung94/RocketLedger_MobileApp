import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

class AppMessage {
  static normal({required String title, required String message}) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        title,
        message,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        duration: const Duration(milliseconds: 3000),
      );
    }
  }

  static error(String message) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        'Opps!!! Something is wrong',
        message,
        isDismissible: false,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        duration: const Duration(milliseconds: 3000),
        backgroundColor: Colors.red.withOpacity(0.3),
        colorText: Colors.white,
      );
    }
  }

  static underDevelopment() {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        'Opps!!! Under Development',
        'ယခုလုပ်ဆောင်မှုမျာသည် စမ်းသတ်ပြုပြင်နေဆဲ ဖြစ်သည်။ အသုံးပြု၍ မရနိုင်သေးပါ။',
        icon: const Icon(Icons.warning),
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        duration: const Duration(milliseconds: 3000),
        backgroundColor: Colors.blue.withOpacity(0.8),
        colorText: Colors.white,
        mainButton: TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text(
            'Close',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }
  }

  static accessDeny() {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        'Opps!!! You are not allowed',
        "သင့်အနေနဲ့ ယခုလုပ်ဆောင်မှုကို လုပ်ဆောင်ခွင့်မရှိပါ။",
        icon: const Icon(
          Icons.warning,
          color: AppColors.background,
        ),
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        duration: const Duration(milliseconds: 3000),
        backgroundColor: Colors.amber.shade900.withOpacity(0.7),
        colorText: Colors.black,
        mainButton: TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text(
            'Close',
            style: TextStyle(color: AppColors.background),
          ),
        ),
      );
    }
  }
}
