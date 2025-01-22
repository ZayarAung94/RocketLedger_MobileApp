import 'package:flutter/material.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/agent_management/childs/childs/agent_payment.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/agent_management/childs/childs/agent_profile.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/agent_management/childs/childs/agent_summary.dart';

import '../../../../../core/constants/app_colors.dart';
import 'childs/agent_history.dart';

class AgentDetail extends StatefulWidget {
  const AgentDetail({super.key});

  @override
  State<AgentDetail> createState() => _AgentDetailState();
}

class _AgentDetailState extends State<AgentDetail> {
  String activeTab = "အနှစ်ချုပ်";
  int tabIndex = 0;
  List<Widget> tabs = [
    const AgentSummary(),
    const AgentPayment(),
    const AgentHistory(),
    const AgentProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: const Text(
          "Agent's Data",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // color: AppColors.accent,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tabBtn(
                    title: "အနှစ်ချုပ်",
                    icon: Icons.data_usage,
                    onTap: () {
                      setState(() {
                        activeTab = "အနှစ်ချုပ်";
                        tabIndex = 0;
                      });
                    },
                  ),
                  tabBtn(
                    title: "ငွေလွှဲများ",
                    icon: Icons.payment,
                    onTap: () {
                      setState(() {
                        activeTab = "ငွေလွှဲများ";
                        tabIndex = 1;
                      });
                    },
                  ),
                  tabBtn(
                    title: "History",
                    icon: Icons.history,
                    onTap: () {
                      setState(() {
                        activeTab = "History";
                        tabIndex = 2;
                      });
                    },
                  ),
                  tabBtn(
                    title: "အပြင်အဆင်",
                    icon: Icons.person,
                    onTap: () {
                      setState(() {
                        activeTab = "အပြင်အဆင်";
                        tabIndex = 3;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: tabs[tabIndex],
          )
        ],
      ),
    );
  }

  Widget tabBtn({
    String? title,
    IconData? icon,
    void Function()? onTap,
  }) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: activeTab == title ? AppColors.primary : AppColors.background,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon ?? Icons.person,
              color: activeTab == title ? AppColors.background : Colors.grey,
            ),
            const SizedBox(height: 2),
            Text(
              title ?? "Hello",
              style: TextStyle(
                color: activeTab == title ? AppColors.background : Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
