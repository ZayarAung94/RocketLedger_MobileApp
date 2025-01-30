import 'package:flutter/material.dart';
import 'package:rocketledger/presentation/widgets/data_row.dart';

class AgentSummary extends StatelessWidget {
  const AgentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(5),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Agent's Summary"),
                    Divider(),
                    AppDataRow(label: 'label', value: 'value'),
                    AppDataRow(label: 'label', value: 'value'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
