import 'package:flutter/material.dart';
import 'package:rocketledger/ui/constant.dart';

class GameByNumberTab extends StatelessWidget {
  const GameByNumberTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 40,
            child: DropdownButtonFormField(
              value: "Number Desending...",
              icon: const Icon(Icons.arrow_drop_down),
              isExpanded: true,
              iconSize: 24,
              elevation: 16,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
              ),
              onChanged: (String? newValue) {},
              items: <String>[
                'Number Desending...',
                'Number Assinding...',
                'Amount Desending...',
                'Amount Assinding...'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
        const SizedBox(height: 10),

        // Table Header -----
        Container(
          decoration: const BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                tableHeader('Number'),
                tableHeader('Amount'),
                tableHeader('Cover'),
                tableHeader('Net Amount'),
              ],
            ),
          ),
        ),

        // Tabale List Data --------------------
        Expanded(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                color: index.isEven ? MyColor.background : Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    tableData('$index'),
                    tableData("10,000"),
                    tableData('5,000'),
                    tableData('10,000'),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget tableHeader(
    String label,
  ) {
    return Expanded(
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Expanded tableData(String index) {
    return Expanded(
      child: Text(
        index,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }
}
