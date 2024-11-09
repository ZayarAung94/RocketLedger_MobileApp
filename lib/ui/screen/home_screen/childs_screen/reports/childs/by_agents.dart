import 'package:flutter/material.dart';
import 'package:rocketledger/ui/constant.dart';
import 'package:rocketledger/ui/widgets/apptext.dart';

class GameByAgentsTab extends StatelessWidget {
  const GameByAgentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const AgentReportCard();
            },
          ),
        ],
      ),
    );
  }
}

class AgentReportCard extends StatefulWidget {
  const AgentReportCard({
    super.key,
  });

  @override
  State<AgentReportCard> createState() => _AgentReportCardState();
}

class _AgentReportCardState extends State<AgentReportCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: MyColor.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              behavior: HitTestBehavior.opaque,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        isExpanded
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down,
                        color: Colors.grey[700],
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            'Self Agent',
                            fontSize: 17,
                            color: Colors.grey,
                          ),
                          AppText(
                            "Description",
                            color: MyColor.softBackground,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.monetization_on,
                        size: 18,
                        color: Colors.green[900],
                      ),
                      const SizedBox(width: 10),
                      const AppText(
                        "100,000",
                        color: MyColor.accent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Visibility(
            visible: isExpanded,
            child: Column(
              children: [
                const Divider(color: MyColor.backgroundAlt),
                dataRow(
                  label1: "Total Amount :",
                  label2: "Commission(%) :",
                  value1: "100,000",
                  value2: '2',
                ),
                dataRow(
                  label1: "Active Number :",
                  label2: "Avg Amount :",
                  value1: "74",
                  value2: '0',
                ),
                dataRow(
                  label1: "Order Times :",
                  label2: "Last Order :",
                  value1: "20",
                  value2: '3:25 pm',
                ),
                dataRow(
                  label1: "Lucky Amount :",
                  label2: "Lacky Payout :",
                  value1: "0",
                  value2: '0',
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2, // Number of columns
                    ),
                    itemCount: 10,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true, // Number of items
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 10,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              AppText(
                                '$index',
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                              const AppText(
                                "10,000",
                                color: MyColor.accent,
                                fontSize: 18,
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
          ),
        ],
      ),
    );
  }

  Widget dataRow({
    required String label1,
    required String label2,
    required String value1,
    required String value2,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15),
      child: Row(
        children: [
          Expanded(
            child: gameCardData(
              label: label1,
              value: value1,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: gameCardData(
              label: label2,
              value: value2,
            ),
          )
        ],
      ),
    );
  }

  Widget gameCardData({
    required String label,
    required String value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          label,
          color: Colors.grey,
          fontWeight: FontWeight.w200,
        ),
        AppText(value),
      ],
    );
  }
}
