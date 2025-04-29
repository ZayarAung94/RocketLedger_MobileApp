import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/helpers/text_style.dart';
import '../../../components/setting_btn.dart';
import '../../../widgets/components/dialogs/close_control_dialog.dart';

class CloseControl extends StatelessWidget {
  const CloseControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: Text(
          "ပိတ်ကွက် စီမံခြင်း",
          style: AppTextStyle.appBar(),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          SettingBtn(
            label: "ပိတ်ကွက်များ စီမံခြင်း",
            icon: Icons.settings_applications,
            value: "10",
            onTap: () {
              Get.dialog(
                const CloseControlDialog(),
              );
            },
          ),
          Expanded(
            child: Padding(
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
                        child: Text("ပိတ်ကွက်"),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "လက်ခံပြီးငွေ",
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
          ),
        ],
      ),
    );
  }
}
