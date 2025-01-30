import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/payment/childs/income.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/payment/childs/outcome.dart';

import '../../../../../core/helpers/button_style.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int tabIndex = 0;
  List<Widget> pages = [
    const IncomeTransactions(),
    const OutcomeTransactions(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: const Text("Payment Transactions"),
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 10,
          ),
          SegmentedButton(
            segments: const [
              ButtonSegment(
                  value: 0,
                  label: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text("ဝင်ငွေ"),
                  )),
              ButtonSegment(value: 1, label: Text("ထွက်ငွေ")),
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
            child: pages[tabIndex],
          ),
        ],
      ),
    );
  }
}
