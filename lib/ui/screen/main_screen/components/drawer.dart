import 'package:flutter/material.dart';
import 'package:rocketledger/ui/constant.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.rocket,
                    size: 80,
                    color: MyColor.accent,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Rocket Ledger',
                  style: TextStyle(
                    color: MyColor.primary,
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
