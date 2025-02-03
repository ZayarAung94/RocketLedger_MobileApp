import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

class DialogHelper {
  static Widget alert({
    String? title,
    String? bodyText,
  }) {
    return AppDialog(
      title: title ?? "Alert Dialog",
      body: Text("$bodyText"),
      footer: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.success,
            ),
            onPressed: () {
              Get.back();
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("OK"),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }

  static Widget comfirmation({
    String? title,
    String? bodyText,
    String? okText,
    void Function()? tapOk,
  }) {
    return AppDialog(
      title: title ?? "Confirmation Title",
      body: Text("$bodyText"),
      footer: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.danger,
            ),
            onPressed: () {
              Get.back();
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("Cancel"),
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.success,
            ),
            onPressed: tapOk ?? () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(okText ?? "OK"),
            ),
          ),
        ],
      ),
    );
  }

  static Widget underDevelopment() {
    return AppDialog(
      title: "Opps!!! Under Development.",
      body: const Text("ယခုလုပ်ဆောင်ချက်များ ပြင်ဆင်စမ်းသတ်နေဆဲ လုပ်ငန်းများဖြစ်သည်။ ယခုအသုံးမပြုနိုင်သေးပါ။"),
      footer: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.success,
            ),
            onPressed: () {
              Get.back();
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("OK"),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

class AppDialog extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget footer;
  const AppDialog({
    super.key,
    required this.title,
    required this.body,
    required this.footer,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.background,
      elevation: 10,
      shadowColor: AppColors.backgroundAlt,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: double.infinity),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: body,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: footer,
            ),
          ],
        ),
      ),
    );
  }
}
