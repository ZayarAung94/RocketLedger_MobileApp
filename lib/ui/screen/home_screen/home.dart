import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rocketledger/ui/constant.dart';
import 'package:rocketledger/ui/screen/home_screen/components/game_card.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../widgets/apptext.dart';
import '../../widgets/dialogs/add_game_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              color: MyColor.background,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: const Offset(1, 3), // changes position of shadow
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  StickyHeader(
                    header:
                        const SectionHeader(label: "Active Games (Offline)"),
                    content: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const GameCard();
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  StickyHeader(
                    header: const SectionHeader(label: "Active Games (Online)"),
                    content: ListView.builder(
                      itemCount: 1,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const GameCard();
                      },
                    ),
                  ),
                  const SizedBox(height: 35),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String label;
  const SectionHeader({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.bar_chart_rounded,
                  color: MyColor.accent,
                ),
                const SizedBox(width: 5),
                AppText(
                  label,
                  color: MyColor.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Get.dialog(
                  const AddGameDialog(),
                );
              },
              child: Container(
                height: 25,
                width: 90,
                decoration: const BoxDecoration(
                  color: MyColor.softBackground,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      "Add Game",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
