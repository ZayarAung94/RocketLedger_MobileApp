import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/components/voucher.dart';
import 'package:rocketledger/presentation/widgets/data_row.dart';

class Vouchers extends StatelessWidget {
  const Vouchers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Get.to(() => const VoucherPage());
          },
          child: Card(
            margin: const EdgeInsets.all(8),
            elevation: 10,
            color: AppColors.background,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: 'User Name ',
                              style: TextStyle(),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' (123456)',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Date : 12/12/2021 (12:12 am)',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "10,000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.accent,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  const AppDataRow(label: "ထိုးကွက်များ", value: "12, 38, 93, 93, 88..."),
                  const AppDataRow(label: "ထိုးကွက် အရေအတွက်", value: "20"),
                  const AppDataRow(label: "Status", value: "Active"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
