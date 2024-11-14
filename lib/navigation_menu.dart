import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trackit/features/analytics/analytics.dart';
import 'package:trackit/features/category/CategoryScreen.dart';
import 'package:trackit/features/homepage/homepage.dart';
import 'package:trackit/features/settings/settings.dart';
import 'package:trackit/features/wallet/wallet.dart';
import 'package:trackit/helper/helper_functions.dart';
import 'package:trackit/utils/constants/colors.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = PHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          backgroundColor: darkMode ? PColors.black : Colors.white,
          indicatorColor: darkMode
              ? PColors.white.withOpacity(0.1)
              : Colors.blueAccent.withOpacity(0.8),
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.wallet_1),
              label: 'Wallet',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.add,
                size: 50,
                color: Colors.blueAccent,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.chart_2),
              label: 'Analytics',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.setting_2),
              label: 'settings',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomePage(),
    const Wallet(),
    const Category(),
    const Analytics(),
    const Settings()
  ];
}
