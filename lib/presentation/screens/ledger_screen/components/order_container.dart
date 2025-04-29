import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/presentation/screens/ledger_screen/components/order_container_controller.dart';

import '../../../../core/constants/app_colors.dart';

class OrderContainer extends StatelessWidget {
  final OrderContainerController controller = Get.put(OrderContainerController());

  OrderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.background,
      ),
      child: Column(
        children: [
          Row(
            children: [
              orderTextField(
                label: "Number",
                value: controller.numberValue.value,
              ),
              orderTextField(
                label: "Amount",
                value: controller.amountValue.value,
                index: 2,
              ),
              Obx(
                () => controller.rAmountStatus.value
                    ? orderTextField(
                        label: "R Amount",
                        value: controller.rAmountValue.value,
                        index: 3,
                      )
                    : orderTextField(
                        label: "Type",
                        value: controller.typeValue.value,
                        index: 4,
                      ),
              ),
            ],
          ),
          addOrderBtn(),
          SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: controller.btnLabel.length,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        style: ButtonStyle(
                          elevation: const WidgetStatePropertyAll(10),
                          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                          backgroundColor: const WidgetStatePropertyAll(
                            AppColors.background,
                          ),
                        ),
                        onPressed: () {
                          if (index == 0) {
                            // controller.rValueChange();
                          } else {
                            // controller.typeValueChange(controller.btnLabel[index]);
                          }
                        },
                        child: Text(
                          controller.btnLabel[index],
                          style: const TextStyle(
                            color: AppColors.success,
                            fontSize: 11,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                keyboardDevider(),
                Row(
                  children: [
                    keyboardBtn(
                      label: "ထိပ်",
                      textColor: AppColors.softBackground,
                      isNumber: false,
                      onTap: () {
                        // controller.typeValueChange('ထိပ်');
                      },
                    ),
                    keyboardBtn(label: "1"),
                    keyboardBtn(label: "2"),
                    keyboardBtn(label: "3"),
                    keyboardBtn(
                      label: "Paste",
                      isNumber: false,
                      onTap: () {
                        // AppMessage.premiumRequire();
                      },
                    ),
                  ],
                ),
                keyboardDevider(),
                Row(
                  children: [
                    keyboardBtn(
                      label: "ပိတ်",
                      textColor: AppColors.softBackground,
                      isNumber: false,
                      onTap: () {
                        // controller.typeValueChange('ပိတ်');
                      },
                    ),
                    keyboardBtn(label: "4"),
                    keyboardBtn(label: "5"),
                    keyboardBtn(label: "6"),
                    keyboardBtn(
                      label: "DEL",
                      textColor: Colors.red,
                      isNumber: false,
                      onTap: () {},
                    ),
                  ],
                ),
                keyboardDevider(),
                Row(
                  children: [
                    keyboardBtn(
                      label: 'ဘြိတ်',
                      textColor: AppColors.softBackground,
                      isNumber: false,
                      onTap: () {
                        // controller.typeValueChange('ဘြိတ်');
                      },
                    ),
                    keyboardBtn(label: "7"),
                    keyboardBtn(label: "8"),
                    keyboardBtn(label: "9"),
                    keyboardBtn(
                      label: ">>",
                      isNumber: false,
                      onTap: () {
                        // controller.nextBtnClick(orderController);
                      },
                    ),
                  ],
                ),
                keyboardDevider(),
                Row(
                  children: [
                    keyboardBtn(
                      label: "ပတ်",
                      textColor: AppColors.softBackground,
                      isNumber: false,
                      onTap: () {
                        // controller.typeValueChange('ပတ်');
                      },
                    ),
                    keyboardBtn(label: '0'),
                    keyboardBtn(label: "00"),
                    keyboardBtn(label: '000'),
                    keyboardBtn(
                      label: "ADD",
                      textColor: Colors.green,
                      isNumber: false,
                      onTap: () {
                        // controller.addBtnClick(orderController);
                      },
                    ),
                  ],
                ),
                keyboardDevider(),
                const SizedBox(height: 10),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget addOrderBtn() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: const WidgetStatePropertyAll(10),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
                backgroundColor: const WidgetStatePropertyAll(
                  AppColors.softBackground,
                ),
              ),
              onPressed: () {
                // orderController.clear();
              },
              child: const Text("Add Order!"),
            ),
          ),
        ),
      ],
    );
  }

  Container keyboardDevider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 1,
      color: AppColors.backgroundAlt,
    );
  }

  Widget keyboardBtn({
    String label = "0",
    bool small = true,
    bool isNumber = true,
    Color? textColor,
    void Function()? onTap,
  }) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
          ),
          backgroundColor: const WidgetStatePropertyAll(
            AppColors.background,
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: small ? 0 : 20.0),
          child: Text(
            label,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: 11,
            ),
          ),
        ),
      ),
    );
  }

  Widget orderTextField({
    required String label,
    String? value,
    int index = 1,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => TextField(
            readOnly: true,
            onTap: () {
              controller.inputFocus.value = index;
            },
            autofocus: controller.inputFocus.value == index,
            decoration: InputDecoration(
                label: Text(
                  label,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: controller.inputFocus.value == index ? Colors.white : Colors.grey.shade600,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: controller.inputFocus.value == index ? Colors.white : Colors.grey.shade600,
                  ),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: value,
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: controller.inputFocus.value == index ? Colors.white : Colors.grey.shade600,
                )),
          ),
        ),
      ),
    );
  }
}
