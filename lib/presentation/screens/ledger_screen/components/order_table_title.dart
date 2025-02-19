import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class OrderTableTitle extends StatelessWidget {
  const OrderTableTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: AppColors.softBackground,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            tbText('Number'),
            tbText('Amount'),
            tbText('Remark'),
          ],
        ),
      ),
    );
  }

  Widget tbText(String label) {
    return Expanded(
      flex: 4,
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.softBackground,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
