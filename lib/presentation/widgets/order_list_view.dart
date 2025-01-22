import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/constants/app_colors.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "အစီအစဉ်  :  ",
                    style: TextStyle(
                      fontFamily: "MyanmarSabae",
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: "ဂဏန်းစဉ်  နည်း > များ",
                        style: TextStyle(
                          fontFamily: "MyanmarSabae",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.dashboard_outlined),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Text(
                            index.toString().padLeft(2, '0'), // Show index as two-digit number
                            style: const TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                NumberFormat('#,##0').format(284048),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: AppColors.accent,
                                ),
                              ),
                              const LinearProgressIndicator(
                                value: 0.8,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
