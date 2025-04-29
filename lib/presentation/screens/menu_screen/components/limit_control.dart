import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/core/helpers/bottomsheet_helper.dart';
import 'package:rocketledger/presentation/components/setting_btn.dart';
import 'package:rocketledger/presentation/widgets/app_message.dart';

class LimitControl extends StatelessWidget {
  const LimitControl({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: "ထိုးငွေ ကန့်သတ်ခြင်း",
      body: SizedBox(
        height: Get.size.height * 0.75,
        child: Column(
          children: [
            SettingBtn(
              label: "တစ်ကွက်အများဆုံး ထိုးငွေ",
              icon: Icons.leaderboard,
              value: "10,000",
              onTap: () {
                AppMessage.underDevelopment();
              },
            ),
            const SettingBtn(
              label: "အများဆုံးထိုးငွေ ကန့်သန့်ခြင်း",
              icon: Icons.settings_applications,
              value: "10",
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "စဉ်",
                          // textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text("ထိုးကွက်"),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "အများဆုံး ထိုးငွေ",
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(""),
                      )
                    ],
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "${index + 1}",
                                // textAlign: TextAlign.center,
                              ),
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text("88"),
                            ),
                            const Expanded(
                              flex: 3,
                              child: Text(
                                "50000",
                                textAlign: TextAlign.end,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete,
                                  color: AppColors.danger,
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
