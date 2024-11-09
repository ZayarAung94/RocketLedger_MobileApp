import 'package:flutter/material.dart';
import 'package:rocketledger/ui/constant.dart';

import '../../../../../widgets/apptext.dart';

class GameVouchersTab extends StatelessWidget {
  const GameVouchersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: const SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                suffixIcon: Icon(Icons.close),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return Container(
                color: MyColor.background,
                margin: const EdgeInsets.symmetric(vertical: 4),
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AppText(
                              '26.6.2024 (1:51 pm)',
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 2),
                            RichText(
                              text: TextSpan(
                                text: 'Customer Name ',
                                children: [
                                  TextSpan(
                                    text: ' (748498)',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.document_scanner_outlined),
                        )
                      ],
                    ),
                    const Divider(color: MyColor.backgroundAlt),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.bookmarks,
                              color: MyColor.primary,
                              size: 14,
                            ),
                            AppText('Total Order : 19')
                          ],
                        ),
                        AppText(
                          '57,000 MMK',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: MyColor.accent,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    voucherData(
                      label: "Order Numbar",
                      value: "21, 23, 13, 21, 34, 32, 24, 24, 43",
                    ),
                    voucherData(),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Row voucherData({
    String label = "Status",
    String value = 'Accept',
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          label,
          color: Colors.grey,
        ),
        SizedBox(
          width: 150,
          child: AppText(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.end,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
