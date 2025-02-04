import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/helpers/bottomsheet_helper.dart';

class ExcudeAmountControl extends StatelessWidget {
  const ExcudeAmountControl({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: "ခေါင်ချိုး စီမံခြင်း",
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
