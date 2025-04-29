import 'package:flutter/material.dart';

import '../../../../core/helpers/bottomsheet_helper.dart';
import '../../app_btn.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: 'ဆက်သွယ် မေးမြန်း',
      body: Column(
        children: [
          const SizedBox(height: 20),
          AppBtn.expendButton(label: "Facebook Messenger"),
          AppBtn.expendButton(label: "Viber +959123456789"),
          AppBtn.expendButton(label: "Telegram @rocketledger"),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
