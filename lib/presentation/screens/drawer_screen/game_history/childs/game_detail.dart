import 'package:flutter/material.dart';
import 'package:rocketledger/core/helpers/text_style.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/game_summary/components/game_summary_widget.dart';
import 'package:rocketledger/presentation/screens/vouchers_screen/vouchers.dart';
import 'package:rocketledger/presentation/widgets/order_list_view.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../menu_screen/childs/payment/components/game_payment.dart';

class GameDetail extends StatefulWidget {
  const GameDetail({super.key});

  @override
  State<GameDetail> createState() => _GameDetailState();
}

class _GameDetailState extends State<GameDetail> {
  String activeTab = "အနှစ်ချုပ်";
  int tabIndex = 0;
  List<Widget> tabs = [
    const GameSummaryWidget(),
    const OrderListView(),
    const VouchersScreen(),
    const GamePayment(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: Text(
          "Game History",
          style: AppTextStyle.appBar(),
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
                    title: "ရောင်းကွက်",
                    icon: Icons.person,
                    onTap: () {
                      setState(() {
                        activeTab = "ရောင်းကွက်";
                        tabIndex = 1;
                      });
                    },
                  ),
                  tabBtn(
                    title: "ဘောက်ချာ",
                    icon: Icons.payment,
                    onTap: () {
                      setState(() {
                        activeTab = "ဘောက်ချာ";
                        tabIndex = 2;
                      });
                    },
                  ),
                  tabBtn(
                    title: "ငွေလွှဲများ",
                    icon: Icons.history,
                    onTap: () {
                      setState(() {
                        activeTab = "ငွေလွှဲများ";
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
          ),
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
