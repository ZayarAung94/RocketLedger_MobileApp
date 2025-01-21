import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/account_setting/account_setting.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/agent_management/agent_manage.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/game_history/game_history.dart';
import 'package:rocketledger/presentation/widgets/app_message.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.rocket,
                    size: 80,
                    color: AppColors.accent,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Rocket Ledger',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(),
                menuBtn(
                  icon: Icons.group_add,
                  label: "Agent Management",
                  onTap: () {
                    Get.back();
                    Get.to(() => const AgentManageScreen());
                  },
                ),
                menuBtn(
                  icon: Icons.person_add_alt,
                  label: "User Management",
                  onTap: () {
                    Get.back();
                    AppMessage.underDevelopment();
                  },
                ),
                menuBtn(
                  icon: Icons.money,
                  label: "Credit Control",
                  onTap: () {
                    Get.back();
                    AppMessage.underDevelopment();
                  },
                ),
                menuBtn(
                  icon: Icons.monetization_on_outlined,
                  label: "Payment Control",
                  onTap: () {
                    Get.back();
                    Get.to(() => const AgentManageScreen());
                  },
                ),
                menuBtn(
                  icon: Icons.dashboard,
                  label: "Games History",
                  onTap: () {
                    Get.back();
                    Get.to(() => const GameHistory());
                  },
                ),
                const Divider(),
                menuBtn(
                  icon: Icons.person_2_rounded,
                  label: "Account Settings",
                  onTap: () {
                    Get.back();
                    Get.to(() => const AccountSetting());
                  },
                ),
                menuBtn(icon: Icons.logout_outlined, label: "Logout"),
                const Divider(),
                const Text(
                  "Version : 1.001 (Beta)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget menuBtn({
    required IconData icon,
    required String label,
    void Function()? onTap,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey,
            ),
            const SizedBox(width: 15),
            Text(label),
          ],
        ),
      ),
    );
  }
}
