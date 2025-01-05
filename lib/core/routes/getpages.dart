import 'package:get/get.dart';

import '../../presentation/screens/main_screen/main_screen.dart';
import '../../presentation/screens/splash.dart';

class Pages {
  static List<GetPage> getPages = [
    GetPage(
      name: '/splash',
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: '/main',
      page: () => const MainScreen(),
    ),
  ];
}
