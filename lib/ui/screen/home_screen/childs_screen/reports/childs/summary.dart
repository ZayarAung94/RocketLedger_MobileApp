import 'package:flutter/material.dart';
import 'package:rocketledger/ui/constant.dart';
import 'package:rocketledger/ui/widgets/apptext.dart';

class GameSummaryTab extends StatelessWidget {
  const GameSummaryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.amber[900],
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: AppText(
                "This summary is not final result.\n Need to game close to see final result.",
                textAlign: TextAlign.center,
                color: MyColor.background,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          sumDataRow(
            label1: "Total Amount",
            label2: "Total Commission",
            value1: "100,000",
            value2: "20,000",
          ),
          sumDataRow(
            label1: "Active Number",
            label2: "Active Agents",
            value1: "78",
            value2: "3",
          ),
          const SizedBox(height: 10),
          const Divider(),
          sumDataRow(
            label1: "Cover Numbers",
            label2: "Cover Amount",
            value1: "0",
            value2: "0",
          ),
          sumDataRow(
            label1: "Lucky Cover (K)",
            label2: "Cover Return",
            value1: "0",
            value2: "0",
          ),
          const SizedBox(height: 10),
          const Divider(),
          sumDataRow(
            label1: "Lucky Agents",
            label2: "Lucky Amounts (Total)",
            value1: "0",
            value2: "0",
          ),
          sumDataRow(
            label1: "Lucky Payout",
            label2: "Payout (Comm + Lucky)",
            value1: "0",
            value2: "0",
          ),
          sumDataRow(
            label1: "",
            label2: "Profit/Lose",
            value1: "",
            value2: "+80,000",
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Padding sumDataRow({
    required String label1,
    required String value1,
    required String label2,
    required String value2,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Row(
        children: [
          Expanded(
            child: summaryDataField(
              label: label1,
              value: value1,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: summaryDataField(
              label: label2,
              value: value2,
            ),
          ),
        ],
      ),
    );
  }

  Widget summaryDataField({
    required String label,
    required String value,
  }) {
    return SizedBox(
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: AppText(label),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: value,
          hintStyle: const TextStyle(
            color: MyColor.primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
