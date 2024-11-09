import 'package:flutter/material.dart';
import 'package:rocketledger/ui/widgets/apptext.dart';

import '../../../../constant.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.background,
        title: const AppText(
          "Cover",
          color: MyColor.primary,
        ),
      ),
    );
  }
}
