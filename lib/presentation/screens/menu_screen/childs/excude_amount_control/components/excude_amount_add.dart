import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/helpers/dialog_helper.dart';
import 'package:rocketledger/presentation/widgets/app_btn.dart';

import '../../../../../../core/constants/app_colors.dart';

class ExcudeAmountAdd extends StatelessWidget {
  const ExcudeAmountAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      title: "ခေါင်ချိုး ဖန်တီးခြင်း",
      body: Column(
        children: [
          inputFormField(label: "ဒိုင်အမည်"),
          inputFormField(label: "ရော်ဆ"),
          inputFormField(label: "ကော်မရှင် (%)"),
          inputFormField(label: "ခေါင်ချိုး အမောင့် (ကျပ်)"),
        ],
      ),
      footer: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppBtn.normal(label: "Add"),
          const SizedBox(width: 5),
          AppBtn.normal(
            label: "Cancel",
            backgroundColor: AppColors.danger.withOpacity(0.6),
            onTap: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }

  Widget inputFormField({
    required String label,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
              label: Text(label),
              border: const OutlineInputBorder(),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8)),
        ),
      ),
    );
  }
}
