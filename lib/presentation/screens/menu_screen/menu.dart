import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/close_control.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/excude_amount_control/excude_amount_control.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/limit_control.dart';

import '../../components/setting_btn.dart';
import '../../widgets/components/dialogs/lucky_num_dialog.dart';
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
              height: 150,
              width: double.infinity,
            ),
          ),
          title("Game Control"),
          SettingBtn(
            label: "ပေါက်ကွက်",
            icon: Icons.star_border,
            value: "NA",
            onTap: () {
              Get.dialog(
                const LuckyNumDialog(),
              );
            },
          ),
          SettingBtn(
            label: "ထိုးငွေ ကန့်သတ်ခြင်း",
            icon: Icons.list_alt,
            onTap: () {
              Get.to(() => const LimitControl());
            },
          ),
          SettingBtn(
            label: "ပိတ်ကွက် စီမံခြင်း",
            icon: Icons.block,
            onTap: () {
              Get.to(() => const CloseControl());
            },
          ),
          SettingBtn(
            label: "ခေါင်ချိုး စီမံခြင်း",
            icon: Icons.arrow_outward_rounded,
            onTap: () {
              Get.to(() => const ExcudeAmountControl());
            },
          ),
          const SettingBtn(
            label: "Close Game",
            icon: Icons.exit_to_app_outlined,
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
            label: "ငွေပေး ငွေယူများ",
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
