import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/presentation/screens/vouchers_screen/childs/agent_report.dart';
import 'package:rocketledger/presentation/screens/vouchers_screen/childs/vouchers.dart';

import '../../../core/helpers/button_style.dart';

class VouchersScreenController extends GetxController {
  var tabIndex = 0.obs;
  List<Widget> pages = [
    const Vouchers(),
    const AgentReport(),
  ];

  void changeTab(int index) {
    tabIndex.value = index;
  }
}

/// ============================================

class VouchersScreen extends StatelessWidget {
  const VouchersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final VouchersScreenController controller = Get.put(VouchersScreenController());

    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 10,
        ),
        Obx(
          () => SegmentedButton(
            segments: const [
              ButtonSegment(value: 0, label: Text("ဘောင်ချာများ")),
              ButtonSegment(value: 1, label: Text("အေးဂျင့်များ")),
            ],
            style: ButtonStyles.segementBtnStyle(),
            selected: <int>{controller.tabIndex.value},
            showSelectedIcon: false,
            onSelectionChanged: (Set<int> value) {
              controller.changeTab(value.first);
            },
          ),
        ),
        Expanded(
          child: Obx(() => controller.pages[controller.tabIndex.value]),
        ),
      ],
    );
  }
}
