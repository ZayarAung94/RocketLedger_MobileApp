import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/agent_management/childs/agent_detail.dart';

import '../../../../core/constants/app_colors.dart';

class AgentManageScreen extends StatelessWidget {
  const AgentManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: const Text(
          'Agent Management',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // color: AppColors.accent,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Get.to(() => const AgentDetail());
            },
            child: Card(
              margin: EdgeInsets.only(
                top: 8,
                left: 8,
                right: 8,
                bottom: index == 19 ? 80 : 0,
              ),
              color: AppColors.background,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.softBackground,
                          child: Icon(
                            Icons.person,
                            size: 33,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Agent's Name"),
                            Text(
                              "agentname.sdk@gmail.com",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text("12-01-2025"),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
