import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/ui/widgets/apptext.dart';
import 'package:rocketledger/ui/widgets/message.dart';

import '../../../../../constant.dart';
import '../controller/order_controller.dart';

class OrderContainer extends StatefulWidget {
  const OrderContainer({
    super.key,
  });

  @override
  State<OrderContainer> createState() => _OrderContainerState();
}

class _OrderContainerState extends State<OrderContainer> {
  List<String> btnLabel = [
    'Normal',
    'ခွေ',
    'ခွေပူး',
    'အပူး',
    'စုံပူး',
    'မပူး',
    'ပါဝါ',
    'နက္ခ',
    'ညီကို',
    'ကိုညီ',
    'ညီကို R',
    'စုံမ',
    'မစုံ',
    'စုံမ R',
    'မစုံ R',
    // 'စုံစုံ',
    // 'မမ'
    // 'စုံကပ်',
    // 'စုံကပ် R',
    // 'မကပ်',
    // 'မကပ် R',
  ];

  bool rAmountStatus = true;
  bool numberStatus = true;
  String numberValue = "??";
  String typeValue = "";
  String amountValue = "0";
  String rAmountValue = '0';

  int inputFocus = 1;

  void typeValueChange(String value) {
    setState(() {
      rAmountStatus = false;
      typeValue = value;
      numberValue = "??";
      amountValue = "0";

      if (getNumberStatus(value)) {
        inputFocus = 1;
      } else {
        numberValue = "";
        inputFocus = 2;
      }
    });
  }

  void rValueChange() {
    setState(() {
      rAmountStatus = true;
      typeValue = "";
      numberValue = "??";
      amountValue = "0";
      inputFocus = 1;
    });
  }

  var orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: MyColor.background,
      ),
      child: Column(
        children: [
          Row(
            children: [
              orderTextField(
                label: "Number",
                value: numberValue,
              ),
              orderTextField(
                label: "Amount",
                value: amountValue,
                index: 2,
              ),
              if (rAmountStatus)
                orderTextField(
                  label: "R Amount",
                  value: rAmountValue,
                  index: 3,
                ),
              if (!rAmountStatus)
                orderTextField(
                  label: "Type",
                  value: typeValue,
                  index: 4,
                ),
            ],
          ),
          addOrderBtn(),
          SizedBox(
            child: Column(
              children: [
                SizedBox(
                  // width: double.infinity,
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: btnLabel.length,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        style: ButtonStyle(
                          elevation: const WidgetStatePropertyAll(10),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                          backgroundColor: const WidgetStatePropertyAll(
                            MyColor.background,
                          ),
                        ),
                        onPressed: () {
                          if (index == 0) {
                            rValueChange();
                          } else {
                            typeValueChange(btnLabel[index]);
                          }
                        },
                        child: Text(
                          btnLabel[index],
                          textScaler: TextScaler.noScaling,
                          style: const TextStyle(
                            color: MyColor.softBackground,
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
                      textColor: MyColor.softBackground,
                      isNumber: false,
                      onTap: () {
                        typeValueChange('ထိပ်');
                      },
                    ),
                    keyboardBtn(label: "1"),
                    keyboardBtn(label: "2"),
                    keyboardBtn(label: "3"),
                    keyboardBtn(
                      label: "Paste",
                      isNumber: false,
                      onTap: pasteBtnClick,
                    ),
                  ],
                ),
                keyboardDevider(),
                Row(
                  children: [
                    keyboardBtn(
                      label: "ပိတ်",
                      textColor: MyColor.softBackground,
                      isNumber: false,
                      onTap: () {
                        typeValueChange('ပိတ်');
                      },
                    ),
                    keyboardBtn(label: "4"),
                    keyboardBtn(label: "5"),
                    keyboardBtn(label: "6"),
                    keyboardBtn(
                      label: "DEL",
                      textColor: Colors.red,
                      isNumber: false,
                      onTap: delBtnClick,
                    ),
                  ],
                ),
                keyboardDevider(),
                Row(
                  children: [
                    keyboardBtn(
                      label: 'ဘြိတ်',
                      textColor: MyColor.softBackground,
                      isNumber: false,
                      onTap: () {
                        typeValueChange('ဘြိတ်');
                      },
                    ),
                    keyboardBtn(label: "7"),
                    keyboardBtn(label: "8"),
                    keyboardBtn(label: "9"),
                    keyboardBtn(
                      label: ">>",
                      isNumber: false,
                      onTap: nextBtnClick,
                    ),
                  ],
                ),
                keyboardDevider(),
                Row(
                  children: [
                    keyboardBtn(
                      label: "ပတ်",
                      textColor: MyColor.softBackground,
                      isNumber: false,
                      onTap: () {
                        typeValueChange('ပတ်');
                      },
                    ),
                    keyboardBtn(label: '0'),
                    keyboardBtn(label: "00"),
                    keyboardBtn(label: '000'),
                    keyboardBtn(
                      label: "ADD",
                      textColor: Colors.green,
                      isNumber: false,
                      onTap: addBtnClick,
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
                  MyColor.softBackground,
                ),
              ),
              onPressed: () {
                orderController.clear();
              },
              child: const AppText("Add Order!"),
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
      color: MyColor.backgroundAlt,
    );
  }

  Widget keyboardBtn({
    String label = "0",
    bool small = false,
    bool isNumber = true,
    Color? textColor,
    void Function()? onTap,
  }) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          // elevation: const WidgetStatePropertyAll(10),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
          ),
          backgroundColor: const WidgetStatePropertyAll(
            MyColor.background,
          ),
        ),
        onPressed: isNumber
            ? () {
                if (inputFocus == 1) {
                  if (numberValue == "??") {
                    setState(() {
                      numberValue = label;
                    });
                  } else {
                    setState(() {
                      numberValue = numberValue + label;
                    });
                  }
                } else if (inputFocus == 2) {
                  if (amountValue == '0') {
                    setState(() {
                      amountValue = label;
                    });
                  } else {
                    setState(() {
                      amountValue = amountValue + label;
                    });
                  }
                } else if (inputFocus == 3) {
                  if (rAmountValue == "0") {
                    setState(() {
                      rAmountValue = label;
                    });
                  } else {
                    setState(() {
                      rAmountValue = rAmountValue + label;
                    });
                  }
                }
              }
            : onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: small ? 0 : 20.0),
          child: AppText(
            label,
            color: textColor,
            fontSize: 14,
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
        child: TextField(
          readOnly: true,
          onTap: () {
            setState(() {
              inputFocus = index;
            });
          },
          autofocus: inputFocus == index,
          decoration: InputDecoration(
              label: AppText(
                label,
                color:
                    inputFocus == index ? Colors.white : Colors.grey.shade600,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color:
                      inputFocus == index ? Colors.white : Colors.grey.shade600,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color:
                      inputFocus == index ? Colors.white : Colors.grey.shade600,
                ),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: value,
              hintStyle: TextStyle(
                fontSize: 14,
                color:
                    inputFocus == index ? Colors.white : Colors.grey.shade600,
              )),
        ),
      ),
    );
  }

  // Function for Keyboard Action

  inputReset() {
    setState(() {
      inputFocus = 1;
      numberValue = "??";
      amountValue = "0";
      rAmountValue = "0";
      rAmountStatus = true;
      typeValue = "";
    });
  }

  addBtnClick() {
    if (amountValue == "0" || amountValue == "") {
      AppMessage.errorMessage(
        message: "Order များ မှားယွင်းနေပါသည်။",
      );
    } else {
      orderController.addOrder(
        numberValue,
        amountValue,
        rAmountValue,
        typeValue,
      );

      inputReset();
    }
  }

  delBtnClick() {
    if (inputFocus == 1) {
      if (numberValue.isNotEmpty) {
        setState(() {
          numberValue = numberValue.substring(0, numberValue.length - 1);
        });
      }
    } else if (inputFocus == 2) {
      if (amountValue.isNotEmpty) {
        setState(() {
          amountValue = amountValue.substring(0, amountValue.length - 1);
        });
      }
    } else if (inputFocus == 3) {
      if (rAmountValue.isNotEmpty) {
        setState(() {
          rAmountValue = rAmountValue.substring(0, rAmountValue.length - 1);
        });
      }
    }
  }

  pasteBtnClick() {
    AppMessage.premiumRequire();
  }

  nextBtnClick() {
    switch (inputFocus) {
      case 1:
        if (orderController.inputValidate(numberValue, 1, typeValue)) {
          setState(() {
            inputFocus++;
          });
        } else {
          AppMessage.errorMessage(
            message:
                "နံပတ်ထည့်သွင်းမှု မှားယွင်းနေပါသည်။ ပြန်လည် စစ်ဆေးပြီး မှန်ကန်စွာထည့်သွင်းပါ။",
          );
        }

        break;
      case 2:
        if (orderController.inputValidate(amountValue, 2, typeValue)) {
          if (rAmountStatus) {
            setState(() {
              inputFocus++;
            });
          } else {
            addBtnClick();
          }
        } else {
          AppMessage.errorMessage(
            message:
                "အမောင့် ထည့်သွင်းမှု မှားယွင်းနေပါသည်။ ပြန်လည် စစ်ဆေးပြီး မှန်ကန်စွာထည့်သွင်းပါ။",
          );
        }

        break;
      case 3:
        addBtnClick();
        break;
      case 4:
        addBtnClick();
        break;
    }
  }

  bool getNumberStatus(String type) {
    if (type == "အပူး" ||
        type == "စုံပူး" ||
        type == "မပူး" ||
        type == "စုံမ" ||
        type == "မစုံ" ||
        type == "စုံမ R" ||
        type == "မစုံ R" ||
        type == "စုံစုံ") {
      numberStatus = false;
      return false;
    }
    return true;
  }
}
