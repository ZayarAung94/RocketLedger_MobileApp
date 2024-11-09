import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rocketledger/ui/constant.dart';
import 'package:rocketledger/ui/widgets/apptext.dart';

class GameCard extends StatefulWidget {
  const GameCard({
    super.key,
  });

  @override
  State<GameCard> createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        color: MyColor.background,
        elevation: 5,
        child: Column(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(isExpanded
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down),
                        const SizedBox(width: 15),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText("Game Title"),
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
                        const AppText(
                          "13,000",
                          color: MyColor.accent,
                        ),
                        iconBtn(),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Visibility(
              visible: isExpanded,
              child: SizedBox(
                height: 170,
                width: double.infinity,
                child: Column(
                  children: [
                    const Divider(color: MyColor.backgroundAlt),
                    SizedBox(
                      height: 40,
                      child: Row(
                        children: [
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              children: [
                                gameCardData(
                                  label: "Active Agents :",
                                  value: "0",
                                ),
                                gameCardData(
                                  label: "Commission :",
                                  value: "0",
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              children: [
                                gameCardData(
                                  label: "Total Orders :",
                                  value: "0",
                                ),
                                gameCardData(
                                  label: "Total Vouchers :",
                                  value: "0",
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          const SizedBox(width: 10),
                          GameCardMainBtn(
                            icon: Icons.book_outlined,
                            label: "Reports",
                            onTap: () {
                              Get.toNamed('main/game_reports');
                            },
                          ),
                          GameCardMainBtn(
                            icon: Icons.self_improvement_outlined,
                            label: "Self Order",
                            onTap: () {
                              Get.toNamed('main/self_order');
                            },
                          ),
                          GameCardMainBtn(
                            icon: Icons.group_outlined,
                            label: "Agent's Order",
                            onTap: () {
                              Get.toNamed('main/agents_order');
                            },
                          ),
                          GameCardMainBtn(
                            icon: Icons.shield_moon_outlined,
                            label: "Cover",
                            onTap: () {
                              Get.toNamed('main/cover');
                            },
                          ),
                          GameCardMainBtn(
                            icon: Icons.settings_outlined,
                            label: "Settings",
                            onTap: () {
                              Get.toNamed('main/settings');
                            },
                          ),
                          const GameCardMainBtn(
                            icon: Icons.delete_outline_outlined,
                            label: "Close Game",
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row gameCardData({
    required String label,
    required String value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          textScaler: TextScaler.noScaling,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w200,
          ),
        ),
        Text(
          value,
          textScaler: TextScaler.noScaling,
        ),
      ],
    );
  }

  Widget iconBtn() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Icon(
        Icons.monetization_on,
        color: MyColor.softBackground,
        size: 18,
      ),
    );
  }
}

class GameCardMainBtn extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function()? onTap;
  const GameCardMainBtn({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 10,
        color: MyColor.backgroundAlt,
        child: Container(
          width: 80,
          margin: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.grey,
                size: 25,
              ),
              const SizedBox(height: 5),
              Text(
                label,
                textAlign: TextAlign.center,
                textScaler: TextScaler.noScaling,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
