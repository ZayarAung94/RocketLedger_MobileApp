import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../vouchers_screen/childs/agent_report.dart';
import '../../../../vouchers_screen/childs/vouchers.dart';

class AgentPayment extends StatefulWidget {
  const AgentPayment({super.key});

  @override
  State<AgentPayment> createState() => _AgentPaymentState();
}

class _AgentPaymentState extends State<AgentPayment> {
  int tabIndex = 0;
  List<Widget> pages = [
    const Vouchers(),
    const AgentReport(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(width: double.infinity),
        SegmentedButton(
          segments: const [
            ButtonSegment(
              value: 0,
              label: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text("Pending"),
              ),
            ),
            ButtonSegment(value: 1, label: Text("History")),
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
    );
  }
}
