import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/models/add_order.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/self_order/controller/order_controller.dart';

import '../../../../constant.dart';
import '../../../../widgets/apptext.dart';
import 'components/order_container.dart';
import 'components/order_table_title.dart';
import 'components/total_result.dart';

class SelfOrderScreen extends StatelessWidget {
  const SelfOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var orderController = Get.put(OrderController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: MyColor.background,
        title: const AppText(
          "Self Order",
          color: MyColor.primary,
        ),
      ),
      body: GetBuilder<OrderController>(
        builder: (context) {
          return Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Customer's Name",
                            prefixIcon: Icon(Icons.account_circle_outlined),
                            border: OutlineInputBorder(),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                    ),
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: const Icon(Icons.paste_sharp),
                    // ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              AddOrderTotalResult(
                allow: "${orderController.activeOrder.length}",
                block: "0",
                amount: orderController.getTotalAmount(),
              ),
              const OrderTableTitle(),
              Expanded(
                child: ListView.builder(
                  itemCount: orderController.activeOrder.length,
                  itemBuilder: (context, index) {
                    AddOrder order = orderController.activeOrder[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 3.0,
                        vertical: 5,
                      ),
                      color: index.isEven
                          ? Colors.transparent
                          : MyColor.backgroundAlt,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              onTap: () {
                                orderController.dropOrder(order);
                              },
                              child: Icon(
                                Icons.delete,
                                color: Colors.red[300],
                              ),
                            ),
                          ),
                          tbData(order.number, 16),
                          tbData(order.amount.toString(), 16),
                          tbData(order.orderType, 12),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              const OrderContainer(),
            ],
          );
        },
      ),
    );
  }

  Widget tbData(String label, double fontSize) {
    return Expanded(
      flex: 4,
      child: AppText(
        label,
        textAlign: TextAlign.center,
        fontSize: fontSize,
      ),
    );
  }
}
