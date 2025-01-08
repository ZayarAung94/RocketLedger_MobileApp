import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

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
                menuBtn(icon: Icons.group_add, label: "Agent Management"),
                menuBtn(icon: Icons.person_add_alt, label: "User Management"),
                menuBtn(icon: Icons.money, label: "Credit Control"),
                menuBtn(icon: Icons.monetization_on_outlined, label: "Payment Control"),
                menuBtn(icon: Icons.dashboard, label: "Games History"),
                const Divider(),
                menuBtn(icon: Icons.person_2_rounded, label: "Account Settings"),
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
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
    );
  }
}
