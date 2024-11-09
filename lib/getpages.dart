import 'package:get/get.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/agents_order/agents_order.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/cover/cover.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/reports/reports.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/self_order/self_order.dart';
import 'package:rocketledger/ui/screen/home_screen/childs_screen/settings/settings.dart';
import 'package:rocketledger/ui/screen/main_screen/main_screen.dart';
import 'package:rocketledger/ui/screen/splash.dart';

class Pages {
  static List<GetPage> getPages = [
    GetPage(
      name: '/splash',
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: '/main',
      page: () => const MainScreen(),
      children: [
        GetPage(
          name: '/game_reports',
          page: () => const GameReportScreen(),
        ),
        GetPage(
          name: '/self_order',
          page: () => const SelfOrderScreen(),
        ),
        GetPage(
          name: '/agents_order',
          page: () => const AgentsOrderScreen(),
        ),
        GetPage(
          name: '/cover',
          page: () => const CoverScreen(),
        ),
        GetPage(
          name: '/settings',
          page: () => const SettingsScreen(),
        ),
      ],
    ),
  ];
}
