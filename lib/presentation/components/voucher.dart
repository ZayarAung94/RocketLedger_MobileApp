import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/core/helpers/text_style.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: Text(
          'Voucher',
          style: AppTextStyle.appBar(),
        ),
      ),
    );
  }
}
