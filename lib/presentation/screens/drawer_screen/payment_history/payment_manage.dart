import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/core/helpers/text_style.dart';
import 'package:rocketledger/presentation/components/payment_card.dart';

import '../../../../core/helpers/button_style.dart';

class PaymentManageController extends GetxController {
  var tabIndex = 0.obs;

  void changeTab(int index) {
    tabIndex.value = index;
  }
}

class PaymentManage extends StatelessWidget {
  const PaymentManage({super.key});

  @override
  Widget build(BuildContext context) {
    final PaymentManageController controller = Get.put(PaymentManageController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: Text(
          "Payment Manage",
          style: AppTextStyle.appBar(),
        ),
      ),
      body: Column(
        children: [
          Obx(
            () => SegmentedButton(
              segments: const [
                ButtonSegment(value: 0, label: Text("လွှဲကျန်များ")),
                ButtonSegment(value: 1, label: Text("ဝင်ငွေများ")),
                ButtonSegment(value: 2, label: Text("ထွက်ငွေများ")),
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
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const PaymentCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
