import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../components/setting_btn.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: const Text(
          'Account Setting',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // color: AppColors.accent,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Card(
              margin: EdgeInsets.all(8),
              color: AppColors.background,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.accent,
                      child: Icon(
                        Icons.person,
                        size: 60,
                        color: AppColors.background,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jone Doe",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "jonedoe@gmail.com",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            title("Profile Settings"),
            const SettingBtn(label: "ဖုန်းနံပတ်", icon: Icons.phone, value: "09-123456789"),
            const SettingBtn(label: "အကောင့် အမျိုးအစား", icon: Icons.type_specimen_outlined, value: "Bookie"),
            const SettingBtn(label: "လက်ကျန်ရက်", icon: Icons.data_exploration_outlined, value: "29 Days"),
            const SettingBtn(label: "အကောင့်ဖွင့်သည့် ရက်စွဲ", icon: Icons.date_range, value: "2021-09-01"),
            SettingBtn(
              label: "ပါစ့်ဝါ့ ပြောင်းမယ်",
              icon: Icons.lock,
              onTap: () {
                // AppMessage.accessDeny();
              },
            ),
            SettingBtn(
              label: "အကောင့်အမျိုးအစားနှင့် စျေးနှုန်းများ",
              icon: Icons.monetization_on,
              onTap: () {
                // AppMessage.accessDeny();
              },
            ),
            title("Game's Settings"),
            const SettingBtn(label: "ကိုယ်ပိုင် ကော် (%)", icon: Icons.payments, value: "10%"),
            const SettingBtn(label: "အေးဂျင့် ကော် (%)", icon: Icons.payments, value: "8%"),
            const SettingBtn(label: "ကိုယ်ပိုင် အေးဂျင့်", icon: Icons.group_outlined, value: "10"),
          ],
        ),
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
