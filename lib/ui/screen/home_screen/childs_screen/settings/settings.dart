import 'package:flutter/material.dart';
import 'package:rocketledger/ui/constant.dart';

import '../../../../widgets/apptext.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.background,
        title: const AppText(
          "Settings",
          color: MyColor.primary,
        ),
      ),
    );
  }
}
