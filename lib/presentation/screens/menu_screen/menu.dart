import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/presentation/screens/menu_screen/components/close_control.dart';
import 'package:rocketledger/presentation/screens/menu_screen/components/excude_amount_control.dart';
import 'package:rocketledger/presentation/screens/menu_screen/components/limit_control.dart';
import 'package:rocketledger/presentation/widgets/app_message.dart';

import '../../components/setting_btn.dart';
import 'childs/game_summary/game_summary.dart';
import 'childs/payment/payment.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Card(
            child: SizedBox(
              height: 200,
              width: double.infinity,
            ),
          ),
          title("Game Control"),
          SettingBtn(
            label: "New Game",
            icon: Icons.add_box_outlined,
            onTap: () {
              AppMessage.accessDeny();
            },
          ),
          const SettingBtn(label: "Close Game", icon: Icons.exit_to_app),
          SettingBtn(
            label: "ထိုးငွေ ကန့်သတ်ခြင်း",
            icon: Icons.list_alt,
            onTap: () {
              Get.bottomSheet(
                const LimitControl(),
                isScrollControlled: true,
                isDismissible: false,
              );
            },
          ),
          SettingBtn(
            label: "ပိတ်ကွက် စီမံခြင်း",
            icon: Icons.block,
            onTap: () {
              Get.bottomSheet(
                const CloseControl(),
                isScrollControlled: true,
                isDismissible: false,
              );
            },
          ),
          SettingBtn(
            label: "ခေါင်ချိုး စီမံခြင်း",
            icon: Icons.arrow_outward_rounded,
            onTap: () {
              Get.bottomSheet(
                const ExcudeAmountControl(),
                isScrollControlled: true,
                isDismissible: false,
              );
            },
          ),
          title("Reports"),
          SettingBtn(
            label: "ပွဲစဉ် အနှစ်ချုပ်",
            icon: Icons.dashboard,
            onTap: () {
              Get.to(() => const GameSummary());
            },
          ),
          SettingBtn(
            label: "ငွေပး ငွေယူများ",
            icon: Icons.payments,
            onTap: () {
              Get.to(() => const Payment());
            },
          ),
        ],
      ),
    );
  }

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 25),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
