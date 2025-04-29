import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/helpers/dialog_helper.dart';
import 'package:rocketledger/presentation/widgets/app_btn.dart';

import '../../../../core/constants/app_colors.dart';

class CloseControlDialog extends StatelessWidget {
  const CloseControlDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      title: "Close Control",
      body: TextFormField(
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          labelText: "ပိတ်ကွက်",
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
      footer: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppBtn.normal(
            label: "Add",
            onTap: () {},
          ),
          const SizedBox(width: 10),
          AppBtn.normal(
            label: "Cancel",
            backgroundColor: AppColors.danger,
            foregroundColor: Colors.white,
            onTap: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
