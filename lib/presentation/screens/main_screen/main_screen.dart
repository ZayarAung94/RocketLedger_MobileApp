import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/helpers/dialog_helper.dart';
import 'package:rocketledger/presentation/screens/ledger_screen/ledger.dart';
import 'package:rocketledger/presentation/screens/menu_screen/menu.dart';
import 'package:rocketledger/presentation/screens/vouchers_screen/vouchers.dart';

import '../../../core/constants/app_colors.dart';
import '../../widgets/app_message.dart';
import '../home_screen/home.dart';
import 'components/drawer.dart';

class MainScreenController extends GetxController {
  var currentIndex = 0.obs;
  final GlobalKey<ScaffoldState> mainScaffoldKey = GlobalKey<ScaffoldState>();
  List<Widget> childScreens = [
    const HomeScreen(),
    const LedgerScreen(),
    const VouchersScreen(),
    const MenuScreen(),
  ];

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainScreenController controller = Get.put(MainScreenController());

    return Scaffold(
      key: controller.mainScaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: const Text(
          "Rocket Ledger",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => controller.mainScaffoldKey.currentState?.openDrawer(),
          icon: const Icon(
            Icons.menu,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.dialog(DialogHelper.underDevelopment());
            },
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              AppMessage.underDevelopment();
            },
            icon: const Icon(
              Icons.message_outlined,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      drawer: const AppDrawer(),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.softBackground,
          selectedIconTheme: const IconThemeData(color: AppColors.primary),
          currentIndex: controller.currentIndex.value,
          onTap: (x) {
            controller.changeIndex(x);
          },
          items: [
            myBNBI(
              label: "Home",
              icon: Icons.bar_chart,
            ),
            myBNBI(
              label: "Ledger",
              icon: Icons.edit_note_rounded,
            ),
            myBNBI(
              label: "Vouchers",
              icon: Icons.history,
            ),
            myBNBI(
              label: "Menu",
              icon: Icons.menu,
            ),
          ],
        ),
      ),
      body: Obx(() => controller.childScreens[controller.currentIndex.value]),
    );
  }

  BottomNavigationBarItem myBNBI({
    required IconData icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      backgroundColor: AppColors.backgroundAlt,
      icon: Icon(
        icon,
      ),
      label: label,
    );
  }
}
