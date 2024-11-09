import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rocketledger/ui/constant.dart';
import 'package:rocketledger/ui/screen/history_screen/history.dart';
import 'package:rocketledger/ui/screen/home_screen/home.dart';
import 'package:rocketledger/ui/screen/ledger_screen/ledger.dart';
import 'package:rocketledger/ui/screen/main_screen/components/drawer.dart';
import 'package:rocketledger/ui/screen/menu_screen/menu.dart';
import 'package:rocketledger/ui/widgets/apptext.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  List<Widget> childScreens = [
    const HomeScreen(),
    const LedgerScreen(),
    const HistoryScreen(),
    const MenuScreen(),
  ];

  var mainScaffoldKey = GlobalKey<ScaffoldState>();

  bool canAppClose = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (b) {
        if (!Get.isSnackbarOpen) {
          canAppClose = true;

          Get.snackbar(
            'Are you sure to close app?',
            'You want to close application click back button next time before this missage dismiss.',
            backgroundColor: AppColors.background,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            duration: const Duration(milliseconds: 3000),
          );
          Future.delayed(
            const Duration(milliseconds: 3000),
            () => {canAppClose = false},
          );
        } else {
          if (canAppClose) {
            // ignore: avoid_print
            print('Close the app');
            // Add code here to close the app
          }
        }
      },
      child: Scaffold(
        key: mainScaffoldKey,
        appBar: AppBar(
          backgroundColor: MyColor.background,
          title: const AppText(
            "Rocket Ledger",
            color: MyColor.primary,
            fontWeight: FontWeight.bold,
          ),
          leading: IconButton(
            onPressed: () => mainScaffoldKey.currentState?.openDrawer(),
            icon: const Icon(
              Icons.menu,
              color: MyColor.accent,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        drawer: const AppDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: MyColor.primary,
          unselectedItemColor: MyColor.softBackground,
          selectedIconTheme: const IconThemeData(color: MyColor.primary),
          currentIndex: currentIndex,
          onTap: (x) {
            setState(() {
              currentIndex = x;
            });
          },
          items: [
            myBNBI(
              label: "Games",
              icon: Icons.bar_chart,
            ),
            myBNBI(
              label: "Ledger",
              icon: Icons.edit_note_rounded,
            ),
            myBNBI(
              label: "History",
              icon: Icons.history,
            ),
            myBNBI(
              label: "Menu",
              icon: Icons.menu,
            ),
          ],
        ),
        body: childScreens[currentIndex],
      ),
    );
  }

  BottomNavigationBarItem myBNBI({
    required IconData icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      backgroundColor: MyColor.background,
      icon: Icon(
        icon,
      ),
      label: label,
    );
  }
}
