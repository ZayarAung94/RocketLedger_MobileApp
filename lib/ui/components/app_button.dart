import 'package:flutter/material.dart';
import 'package:rocketledger/ui/constant.dart';

class AppButton {
  static ElevatedButton normalBtn({
    String label = "TestBtn",
    bool rounded = true,
    bool disable = false,
    void Function()? onPressed,
  }) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          disable ? MyColor.background : MyColor.backgroundAlt,
        ),
        elevation: const WidgetStatePropertyAll(10),
      ),
      onPressed: onPressed ?? () {},
      child: Text(label),
    );
  }
}
