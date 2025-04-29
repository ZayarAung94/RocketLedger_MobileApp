import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/helpers/text_style.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../widgets/order_list_view.dart';
import '../../../menu_screen/childs/game_summary/components/game_summary_widget.dart';
import '../../../menu_screen/childs/payment/components/game_payment.dart';
import '../../../vouchers_screen/vouchers.dart';

class GameDetail extends StatelessWidget {
  final GameDetailController controller = Get.put(GameDetailController());

  GameDetail({super.key});

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
                      controller.changeTab("အနှစ်ချုပ်", 0);
                    },
                  ),
                  tabBtn(
                    title: "ရောင်းကွက်",
                    icon: Icons.person,
                    onTap: () {
                      controller.changeTab("ရောင်းကွက်", 1);
                    },
                  ),
                  tabBtn(
                    title: "ဘောက်ချာ",
                    icon: Icons.payment,
                    onTap: () {
                      controller.changeTab("ဘောက်ချာ", 2);
                    },
                  ),
                  tabBtn(
                    title: "ငွေလွှဲများ",
                    icon: Icons.history,
                    onTap: () {
                      controller.changeTab("ငွေလွှဲများ", 3);
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Obx(() => controller.tabs[controller.tabIndex.value]),
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
    return Obx(() => Container(
          width: 100,
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: controller.activeTab.value == title ? AppColors.primary : AppColors.background,
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
                  color: controller.activeTab.value == title ? AppColors.background : Colors.grey,
                ),
                const SizedBox(height: 2),
                Text(
                  title ?? "Hello",
                  style: TextStyle(
                    color: controller.activeTab.value == title ? AppColors.background : Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class GameDetailController extends GetxController {
  var activeTab = "အနှစ်ချုပ်".obs;
  var tabIndex = 0.obs;
  List<Widget> tabs = [
    const GameSummaryWidget(),
    const OrderListView(),
    const VouchersScreen(),
    const GamePayment(),
  ];

  void changeTab(String tab, int index) {
    activeTab.value = tab;
    tabIndex.value = index;
  }
}
