import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

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
          settingBtn(label: "Close Game"),
          title("Reports"),
          settingBtn(label: "Game Summary"),
          settingBtn(label: "Agent's Payments"),
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
    String? value,
    String? description,
  }) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
      color: AppColors.background,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.home,
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
    );
  }
}
