import 'package:flutter/material.dart';
import 'package:rocketledger/presentation/widgets/screen_helper.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenHelper(
      title: "App Tutorials",
      body: Text("Tutorials"),
    );
  }
}
