import 'package:flutter/material.dart';
import 'package:rocketledger/presentation/widgets/screen_helper.dart';

class AppSetting extends StatelessWidget {
  const AppSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenHelper(
      title: "Application Setting",
      body: Text("hello"),
    );
  }
}
