import 'package:flutter/material.dart';
import 'package:rocketledger/presentation/screens/vouchers_screen/childs/agent_report.dart';
import 'package:rocketledger/presentation/screens/vouchers_screen/childs/vouchers.dart';

class VouchersScreen extends StatefulWidget {
  const VouchersScreen({super.key});

  @override
  State<VouchersScreen> createState() => _VouchersScreenState();
}

class _VouchersScreenState extends State<VouchersScreen> {
  int tabIndex = 0;
  List<Widget> pages = [
    const Vouchers(),
    const AgentReport(),
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
            ButtonSegment(value: 0, label: Text("Vouchers")),
            ButtonSegment(value: 1, label: Text("Agent's Reports")),
          ],
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
