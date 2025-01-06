import 'package:flutter/material.dart';

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
              const Text(
                'Total Amount :',
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
                  child: Text(
                    allow,
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
                  child: Text(
                    block,
                  ),
                ),
              ),
            ],
          ),
          Text(
            amount,
          )
        ],
      ),
    );
  }
}
