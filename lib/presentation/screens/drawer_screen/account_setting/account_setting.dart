import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/helpers/bottomsheet_helper.dart';
import 'package:rocketledger/core/helpers/dialog_helper.dart';
import 'package:rocketledger/presentation/widgets/app_message.dart';

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
            const SettingBtn(label: "အကောင့် အမျိုးအစား", icon: Icons.type_specimen_outlined, value: "Free"),
            const SettingBtn(label: 'ဖုန်းအမျိုးအစား', icon: Icons.mobile_friendly, value: "MAR LX2"),
            const SettingBtn(label: "လက်ခံနိုင်သောအေးဂျင့်", icon: Icons.group_outlined, value: "0"),
            const SettingBtn(label: "လက်ကျန်ရက်", icon: Icons.data_exploration_outlined, value: "Unlimited"),
            const SettingBtn(label: "အကောင့်ဖွင့်သည့် ရက်စွဲ", icon: Icons.date_range, value: "2021-09-01"),
            SettingBtn(
              label: "ပါစ့်ဝါ့ ပြောင်းမယ်",
              icon: Icons.lock,
              onTap: () {
                Get.dialog(DialogHelper.underDevelopment());
              },
            ),
            title("Game's Settings"),
            SettingBtn(
              label: "ကိုယ်ပိုင် ကော် (%)",
              icon: Icons.payments,
              value: "10%",
              onTap: () {
                Get.bottomSheet(
                  const AppBottomSheet(
                    title: "Change Commission (% )",
                  ),
                );
              },
            ),
            SettingBtn(
              label: "အေးဂျင့် ကော် (%)",
              icon: Icons.payments,
              value: "0%",
              onTap: () {
                AppMessage.accessDeny();
              },
            ),
            title('Master Settings'),
            SettingBtn(
              label: 'Master ချိတ်ဆက်ခြင်း',
              icon: Icons.group_outlined,
              value: "OFF",
              onTap: () {
                AppMessage.accessDeny();
              },
            ),
            const SettingBtn(label: 'အမည်', icon: Icons.person),
            const SizedBox(height: 30)
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
