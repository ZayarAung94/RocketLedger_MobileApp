import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/helpers/bottomsheet_helper.dart';

class LimitControl extends StatelessWidget {
  const LimitControl({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: "ထိုးငွေ ကန့်သတ်ခြင်း",
      body: SizedBox(
        height: Get.size.height * 0.75,
        child: const Column(
          children: [
            Text("hello"),
          ],
        ),
      ),
    );
  }
}
