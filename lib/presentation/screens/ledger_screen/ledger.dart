import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

import '../../../models/add_order.dart';
import 'components/order_table_title.dart';
import 'components/total_result.dart';

class LedgerScreen extends StatelessWidget {
  const LedgerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
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
          const AddOrderTotalResult(
            allow: "0",
            block: "0",
            amount: "0",
          ),
          const OrderTableTitle(),
          Expanded(
            child: ListView.builder(
              itemCount: 0,
              itemBuilder: (context, index) {
                AddOrder order = AddOrder(amount: 0, number: "0", orderType: "0");
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
                            // orderController.dropOrder(order);
                          },
                          child: Icon(
                            Icons.delete,
                            color: Colors.red[300],
                          ),
                        ),
                      ),
                      tbData(order.number, 12),
                      tbData(order.amount.toString(), 12),
                      tbData(order.orderType, 12),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          // OrderContainer(),
        ],
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
