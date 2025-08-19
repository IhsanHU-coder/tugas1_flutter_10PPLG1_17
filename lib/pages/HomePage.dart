import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/controllers/home_controller.dart';
import 'package:project_dart_1/pages/calculator_page.dart';
import 'package:project_dart_1/Login_Page.dart';
import 'package:project_dart_1/pages/football_pages.dart';
import 'package:project_dart_1/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // pakai controller
  final HomeController controller = Get.put(HomeController());

  final pages = [
    CalculatorPage(),
    //LoginPage(),
    FootballPages(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: pages[controller.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.changeTab,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: "Calculator",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.accessibility_sharp),
                label: "Football",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ));
  }
}
