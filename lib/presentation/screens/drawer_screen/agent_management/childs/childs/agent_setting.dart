import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

class AgentSetting extends StatefulWidget {
  const AgentSetting({super.key});

  @override
  State<AgentSetting> createState() => _AgentSettingState();
}

class _AgentSettingState extends State<AgentSetting> {
  int commissionPercentage = 8;

  void _increaseCommission() {
    setState(() {
      commissionPercentage++;
    });
  }

  void _decreaseCommission() {
    setState(() {
      if (commissionPercentage > 0) {
        commissionPercentage--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Card(
          margin: EdgeInsets.all(5),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Agent's Commission (%)",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "8%",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Agent's Commission (%)",
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      color: Colors.white,
                      onPressed: _decreaseCommission,
                    ),
                    Text(
                      '$commissionPercentage %',
                      style: const TextStyle(fontSize: 16),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: _increaseCommission,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.accent, // Change button color to blue
            elevation: 10, // Set button elevation to 10
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Apply",
              style: TextStyle(
                color: Colors.black, // Change text color to black
                fontWeight: FontWeight.bold, // Make text bold
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
