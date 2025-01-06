import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

import '../../../models/add_order.dart';
import 'components/order_container.dart';
import 'components/order_table_title.dart';
import 'components/total_result.dart';
import 'controller/order_controller.dart';

class LedgerScreen extends StatelessWidget {
  const LedgerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var orderController = Get.put(OrderController());

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
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
                      color: index.isEven ? Colors.transparent : AppColors.backgroundAlt,
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
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
        ),
      ),
    );
  }
}
