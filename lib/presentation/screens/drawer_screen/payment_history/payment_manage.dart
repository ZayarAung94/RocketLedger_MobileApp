import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/core/helpers/text_style.dart';
import 'package:rocketledger/presentation/components/payment_card.dart';

import '../../../../core/helpers/button_style.dart';

class PaymentManage extends StatefulWidget {
  const PaymentManage({super.key});

  @override
  State<PaymentManage> createState() => _PaymentManageState();
}

class _PaymentManageState extends State<PaymentManage> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: Text(
          "Payment Manage",
          style: AppTextStyle.appBar(),
        ),
      ),
      body: Column(
        children: [
          SegmentedButton(
            segments: const [
              ButtonSegment(value: 0, label: Text("လွှဲကျန်များ")),
              ButtonSegment(value: 1, label: Text("ဝင်ငွေများ")),
              ButtonSegment(value: 2, label: Text("ထွက်ငွေများ")),
            ],
            style: ButtonStyles.segementBtnStyle(),
            selected: <int>{tabIndex},
            showSelectedIcon: false,
            onSelectionChanged: (Set<int> value) {
              setState(() {
                tabIndex = value.first;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const PaymentCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
