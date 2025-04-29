import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/helpers/dialog_helper.dart';
import 'package:rocketledger/presentation/widgets/app_btn.dart';

import '../../../../core/constants/app_colors.dart';

class LimitControlDialog extends StatelessWidget {
  const LimitControlDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      title: "Limit Control",
      body: Row(
        children: [
          textField(label: "ထိုးကွက်"),
          const SizedBox(width: 20),
          textField(label: "ပမာဏ"),
        ],
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

  Expanded textField({
    required String label,
  }) {
    return Expanded(
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
