import 'package:flutter/material.dart';
import 'package:rocketledger/ui/widgets/apptext.dart';

import '../../../../../constant.dart';

class AddOrderTotalResult extends StatelessWidget {
  final String allow;
  final String block;
  final String amount;
  const AddOrderTotalResult({
    super.key,
    required this.allow,
    required this.block,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const AppText(
                'Total Amount :',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              Container(
                height: 23,
                width: 23,
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: AppText(
                    allow,
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 23,
                width: 23,
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: AppText(
                    block,
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          AppText(
            amount,
            color: MyColor.accent,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
