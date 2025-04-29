import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rocketledger/core/routes/getpages.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: Pages.getPages,
      theme: ThemeData.dark().copyWith(
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: "MyanmarSabae",
            ),
        primaryTextTheme: ThemeData.dark().textTheme.apply(
              fontFamily: "MyanmarSabae",
            ),
      ),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1),
          ),
          child: child ?? const SizedBox(),
        );
      },
    );
  }
}
