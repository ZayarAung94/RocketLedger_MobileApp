import 'package:flutter/material.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/reports/childs/by_agents.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/reports/childs/by_number.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/reports/childs/final_report.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/reports/childs/settings.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/reports/childs/summary.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/reports/childs/vouchers.dart';
import 'package:rocketledger/ui/widgets/apptext.dart';

import '../../../../constant.dart';

class GameReportScreen extends StatefulWidget {
  const GameReportScreen({super.key});

  @override
  State<GameReportScreen> createState() => _GameReportScreenState();
}

class _GameReportScreenState extends State<GameReportScreen> {
  int activeIndex = 0;

  List<Widget> tabScreens = [
    const GameSummaryTab(),
    const GameByNumberTab(),
    const GameByAgentsTab(),
    const GameVouchersTab(),
    const GameFinalReportTab(),
    const GameSettingsTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.background,
        elevation: 10,
        surfaceTintColor: Colors.black,
        title: const AppText(
          "Reports",
          color: MyColor.primary,
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: MyColor.background,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(width: 10),
                tabBtn(index: 0, label: "Summary"),
                tabBtn(
                  index: 1,
                  label: "By Numbers",
                  icon: Icons.list_alt_outlined,
                ),
                tabBtn(
                  index: 2,
                  label: "By Agents",
                  icon: Icons.group_outlined,
                ),
                tabBtn(
                  index: 3,
                  label: "Vouchers",
                  icon: Icons.file_copy_outlined,
                ),
                tabBtn(
                  index: 4,
                  label: "Final Report",
                  icon: Icons.monetization_on_outlined,
                ),
                tabBtn(
                  index: 5,
                  label: "Settings",
                  icon: Icons.settings,
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
          Expanded(
            child: tabScreens[activeIndex],
          )
        ],
      ),
    );
  }

  Widget tabBtn({
    required int index,
    required String label,
    IconData icon = Icons.document_scanner,
    bool enable = true,
  }) {
    return GestureDetector(
      onTap: () {
        if (enable) {
          setState(() {
            activeIndex = index;
          });
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        width: 100,
        decoration: BoxDecoration(
          color:
              index == activeIndex ? MyColor.backgroundAlt : Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 27,
              color: enable ? Colors.grey : Colors.grey[800],
            ),
            const SizedBox(height: 4),
            AppText(label),
          ],
        ),
      ),
    );
  }
}
