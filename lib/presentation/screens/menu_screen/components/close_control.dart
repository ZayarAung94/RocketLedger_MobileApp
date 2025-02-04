import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/helpers/bottomsheet_helper.dart';

class CloseControl extends StatelessWidget {
  const CloseControl({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: "ပိတ်ကွက် စီမံခြင်း",
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
