import 'package:flutter/material.dart';
import 'package:rocketledger/presentation/screens/ledger_screen/ledger.dart';
import 'package:rocketledger/presentation/screens/menu_screen/menu.dart';
import 'package:rocketledger/presentation/screens/vouchers_screen/vouchers.dart';

import '../../../core/constants/app_colors.dart';
import '../home_screen/home.dart';
import 'components/drawer.dart';

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
    const VouchersScreen(),
    const MenuScreen(),
  ];

  var mainScaffoldKey = GlobalKey<ScaffoldState>();

  bool canAppClose = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mainScaffoldKey,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(
          "Rocket Ledger",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // color: AppColors.accent,
          ),
        ),
        leading: IconButton(
          onPressed: () => mainScaffoldKey.currentState?.openDrawer(),
          icon: const Icon(
            Icons.menu,
            // color: AppColors.accent,
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
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.softBackground,
        selectedIconTheme: const IconThemeData(color: AppColors.primary),
        currentIndex: currentIndex,
        onTap: (x) {
          setState(() {
            currentIndex = x;
          });
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
      body: childScreens[currentIndex],
    );
  }

  BottomNavigationBarItem myBNBI({
    required IconData icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      backgroundColor: AppColors.background,
      icon: Icon(
        icon,
      ),
      label: label,
    );
  }
}
