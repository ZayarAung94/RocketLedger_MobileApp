import 'package:flutter/material.dart';
import 'package:rocketledger/presentation/components/setting_btn.dart';
import 'package:rocketledger/presentation/widgets/screen_helper.dart';

class AppSetting extends StatelessWidget {
  const AppSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      title: "Application Setting",
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Card(
              margin: EdgeInsets.all(8),
              child: SizedBox(
                height: 100,
                width: double.infinity,
              ),
            ),
            title("အထွေထွေ အသုံးပြုခြင်း"),
            SettingBtn(
              label: "အလိုလျောက် ကစားပွဲဖန်တီးခြင်း",
              icon: Icons.settings_outlined,
              isSwitch: true,
              switchTap: (value) {},
            ),
            SettingBtn(
              label: "ကော်စားအကောင့် အသုံးပြုခြင်း",
              icon: Icons.money_outlined,
              isSwitch: true,
              switchTap: (value) {},
            ),
            title("ခေါင်းချိုး အသုံးပြုခြင်း"),
            const SettingBtn(label: "ခေါင်းချိုး ကော်", icon: Icons.percent),
            const SettingBtn(label: "ခေါင်းချိုး ရော်ဆ", icon: Icons.monetization_on_outlined),
          ],
        ),
      ),
    );
  }

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 25),
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
