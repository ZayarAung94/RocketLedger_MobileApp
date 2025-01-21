import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_colors.dart';

class AgentProfile extends StatefulWidget {
  const AgentProfile({super.key});

  @override
  State<AgentProfile> createState() => _AgentProfileState();
}

class _AgentProfileState extends State<AgentProfile> {
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          profileTitle("Agent's Profile"),
          dataCard(title: "Agent's ID", value: "asdlkfj;lkasdjf;lksajd;flkjas;dlkfj;aslkdjfa"),
          dataCard(title: "Agent's Name", value: "John Doe"),
          dataCard(title: "Phone", value: "09 123456789"),
          dataCard(
            title: "Account Role",
            value: "Agent",
            onTap: () {},
          ),
          const SizedBox(height: 10),
          profileTitle("Agent's Settings"),
          dataCard(
            title: "Luck Odds",
            value: "80",
            onTap: () {},
          ),
          dataCard(
            title: "Order Limit",
            value: "Unlimited",
            onTap: () {},
          ),
          Card(
            margin: const EdgeInsets.all(5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Agent's Commission (%)",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        color: Colors.grey,
                        onPressed: _decreaseCommission,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '$commissionPercentage %',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        icon: const Icon(Icons.add),
                        color: Colors.grey,
                        splashColor: Colors.grey,
                        onPressed: _increaseCommission,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Padding profileTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget dataCard({
    required String title,
    required String value,
    void Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Card(
        margin: const EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      value,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.end,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  if (onTap != null)
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Colors.grey,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
