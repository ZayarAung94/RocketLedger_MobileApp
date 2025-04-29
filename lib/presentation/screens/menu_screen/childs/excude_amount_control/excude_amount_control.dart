import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/core/helpers/text_style.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/excude_amount_control/components/excude_amount_add.dart';
import 'package:rocketledger/presentation/widgets/data_row.dart';

class ExcudeAmountControl extends StatelessWidget {
  const ExcudeAmountControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: Text(
          "Excude Amount Control",
          style: AppTextStyle.appBar(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.dialog(const ExcudeAmountAdd());
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          const Card(
            margin: EdgeInsets.all(8),
            color: AppColors.backgroundAlt,
            child: SizedBox(
              height: 100,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return const Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  color: AppColors.background,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bookie's Name",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "12.02.2025 (09:10 am)",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "5,000",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.danger,
                              ),
                            )
                          ],
                        ),
                        Divider(),
                        AppDataRow(label: 'ထိုးကွက်ပေါင်း', value: 'value'),
                        AppDataRow(label: 'စုစုပေါင်း ထိုးငွေ', value: 'value'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
