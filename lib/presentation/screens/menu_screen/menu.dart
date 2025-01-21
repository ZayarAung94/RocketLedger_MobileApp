import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/widgets/app_message.dart';

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
          settingBtn(
            label: "New Game",
            icon: Icons.add_box_outlined,
            onTap: () {
              AppMessage.accessDeny();
            },
          ),
          settingBtn(label: "Close Game", icon: Icons.exit_to_app),
          settingBtn(label: "Limit Amount By Number", icon: Icons.list_alt),
          settingBtn(label: "Block Number", icon: Icons.block),
          settingBtn(label: "Excess Order Redirection", icon: Icons.arrow_outward_rounded),
          title("Reports"),
          settingBtn(
            label: "Game Summary",
            icon: Icons.dashboard,
            onTap: () {
              Get.to(() => const GameSummary());
            },
          ),
          settingBtn(
            label: "Payment Transactions",
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

  Widget settingBtn({
    required String label,
    required IconData icon,
    void Function()? onTap,
    String? value,
    String? description,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Card(
        elevation: 10,
        margin: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
        color: AppColors.background,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(label),
                      if (description != null)
                        SizedBox(
                          width: 200,
                          child: Text(
                            description,
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(value ?? ""),
                  const SizedBox(width: 10),
                  const Icon(Icons.chevron_right_rounded),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
