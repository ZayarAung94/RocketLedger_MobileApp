import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/payment/childs/income.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/payment/childs/net.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/payment/childs/outcome.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int tabIndex = 0;
  List<Widget> pages = [
    const NetTransaction(),
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
              ButtonSegment(value: 0, label: Text("Net")),
              ButtonSegment(value: 1, label: Text("Income")),
              ButtonSegment(value: 2, label: Text("Outcome")),
            ],
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) {
                    return AppColors.accent; // Selected segment color
                  }
                  return AppColors.background; // Unselected segment color
                },
              ),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) {
                    return Colors.black; // Selected text color
                  }
                  return Colors.white; // Unselected text color
                },
              ),
            ),
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
