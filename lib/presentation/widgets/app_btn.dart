import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

class AppBtn {
  static Widget normal({
    required String label,
    Color? backgroundColor,
    Color? foregroundColor,
    void Function()? onTap,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.info, // Ensure AppColors.info is defined
        foregroundColor: foregroundColor ?? AppColors.background, // Ensure AppColors.background is defined
        elevation: 10,
      ),
      onPressed: onTap,
      child: Text(label),
    );
  }

  static Widget expendButton({
    required String label,
    void Function()? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.info,
          foregroundColor: AppColors.background,
          elevation: 10, // Change background color to blue
        ),
        onPressed: onTap ??
            () {
              Get.back();
            },
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: Text(label),
          ),
        ),
      ),
    );
  }

  static Widget menuBtn({
    required IconData icon,
    required String label,
    void Function()? onTap,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey,
            ),
            const SizedBox(width: 15),
            Text(label),
          ],
        ),
      ),
    );
  }
}
