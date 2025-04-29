import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/core/helpers/dialog_helper.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/account_setting/account_setting.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/app_setting/app_setting.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/game_history/game_history.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/lessons/lessons.dart';
import 'package:rocketledger/presentation/widgets/app_message.dart';

import '../../../widgets/app_btn.dart';
import '../../../widgets/components/bottom_sheets/contact_us.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
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
                  AppBtn.menuBtn(
                    icon: Icons.group_add,
                    label: "အေးဂျင့်များအား စီမံခြင်း",
                    onTap: () {
                      Get.dialog(DialogHelper.underDevelopment());
                      // Get.back();
                      // Get.to(() => const AgentManageScreen());
                    },
                  ),
                  AppBtn.menuBtn(
                    icon: Icons.person_add_alt,
                    label: "ထိုးသားများအား စီမံခြင်း",
                    onTap: () {
                      Get.dialog(DialogHelper.underDevelopment());
                    },
                  ),
                  AppBtn.menuBtn(
                    icon: Icons.money,
                    label: "ချေးငွေများအား စီမံခြင်း",
                    onTap: () {
                      Get.dialog(DialogHelper.underDevelopment());
                    },
                  ),
                  AppBtn.menuBtn(
                    icon: Icons.monetization_on_outlined,
                    label: "ငွေပေး ငွေယူများ",
                    onTap: () {
                      Get.dialog(DialogHelper.underDevelopment());
                      // Get.back();
                      // Get.to(() => const PaymentManage());
                    },
                  ),
                  AppBtn.menuBtn(
                    icon: Icons.dashboard_outlined,
                    label: "ပြီးဆုံးပြီးသော ပွဲစဉ်များ",
                    onTap: () {
                      Get.back();
                      Get.to(() => const GameHistory());
                    },
                  ),
                  const Divider(),
                  AppBtn.menuBtn(
                    icon: Icons.person_2_outlined,
                    label: "အကောင့် အပြင်အဆင်",
                    onTap: () {
                      Get.back();
                      Get.to(() => const AccountSetting());
                    },
                  ),
                  AppBtn.menuBtn(
                    icon: Icons.app_settings_alt_outlined,
                    label: "ဆော့ဝဲ အပြင်အဆင်",
                    onTap: () {
                      Get.back();
                      Get.to(() => const AppSetting());
                    },
                  ),
                  AppBtn.menuBtn(
                    icon: Icons.logout_outlined,
                    label: "Logout",
                    onTap: () {
                      Get.dialog(
                        DialogHelper.comfirmation(
                          title: "Confirm Logout !",
                          bodyText: "Are you sure to Logout?",
                          okText: "Logout",
                        ),
                        barrierDismissible: false,
                      );
                    },
                  ),
                  const Divider(),
                  AppBtn.menuBtn(
                    icon: Icons.play_circle_outline_rounded,
                    label: "သင်ခန်းစာများ",
                    onTap: () {
                      Get.to(() => const LessonScreen());
                    },
                  ),
                  AppBtn.menuBtn(
                    icon: Icons.feedback_outlined,
                    label: "Feedback",
                    onTap: () {
                      AppMessage.underDevelopment();
                    },
                  ),
                  AppBtn.menuBtn(
                    icon: Icons.message_outlined,
                    label: "Contact Us",
                    onTap: () {
                      Get.bottomSheet(const ContactUs());
                    },
                  ),
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
      ),
    );
  }
}
