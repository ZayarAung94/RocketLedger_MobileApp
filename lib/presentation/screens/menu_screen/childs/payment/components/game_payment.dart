import 'package:flutter/material.dart';

import '../../../../../../core/helpers/button_style.dart';
import '../childs/income.dart';
import '../childs/outcome.dart';

class GamePayment extends StatefulWidget {
  const GamePayment({super.key});

  @override
  State<GamePayment> createState() => _GamePaymentState();
}

class _GamePaymentState extends State<GamePayment> {
  int tabIndex = 0;
  List<Widget> pages = [
    const IncomeTransactions(),
    const OutcomeTransactions(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
