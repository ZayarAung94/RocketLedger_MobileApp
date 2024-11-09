import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/ui/constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 5),
      () => {Get.offNamed('/main')},
    );

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.rocket,
                size: 100,
                color: MyColor.accent,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Rocket Ledger",
              style: TextStyle(
                color: MyColor.primary,
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'version : 1.0.0 (Beta)',
              style: TextStyle(
                color: MyColor.softBackground,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 15,
              width: 15,
              child: CircularProgressIndicator(
                color: MyColor.accent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
