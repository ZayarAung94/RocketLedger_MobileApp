import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/core/helpers/text_style.dart';
import 'package:rocketledger/presentation/widgets/app_message.dart';
import 'package:rocketledger/presentation/widgets/data_row.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: Text(
          'Voucher',
          style: AppTextStyle.appBar(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.ios_share),
            onPressed: () {
              AppMessage.underDevelopment();
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Card(
          margin: const EdgeInsets.all(10),
          color: AppColors.backgroundAlt,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: double.infinity),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "21.01.2024 (10:00 am)",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),
                    RichText(
                      text: const TextSpan(
                        text: "User's Name",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: " (1234567)",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const DottedLine(),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ငွေအမောင့် စုစုပေါင်း",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "20,000 Ks",
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const AppDataRow(label: "ထိုးကွက်ပေါင်း", value: '10'),
                    const AppDataRow(
                      label: 'Status',
                      value: "Active",
                      valueColor: Colors.green,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                          horizontal: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                      child: const Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text("စဉ်"),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text("တင်သီး"),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "တင်ငွေ",
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return tableRow(
                          title: "88",
                          amount: 10000,
                          index: index,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column tableRow({
    required String title,
    required int amount,
    required int index,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text("${index + 1}"),
              ),
              Expanded(
                flex: 2,
                child: Text(title),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  NumberFormat("#,###").format(amount),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}

class DottedLine extends StatelessWidget {
  const DottedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 4.0;
        const dashHeight = 1.0;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 7,
              height: 14,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
            Expanded(
              child: Flex(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: List.generate(dashCount, (_) {
                  return SizedBox(
                    width: dashWidth,
                    height: dashHeight,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
                    ),
                  );
                }),
              ),
            ),
            Container(
              width: 7,
              height: 14,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
