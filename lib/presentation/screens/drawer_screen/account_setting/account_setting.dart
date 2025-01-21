import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(
          'Account Setting',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // color: AppColors.accent,
          ),
        ),
      ),
    );
  }
}
