import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/controllers/home_controller.dart';
import 'package:project_dart_1/pages/calculator_page.dart';
import 'package:project_dart_1/pages/football_pages.dart';
import 'package:project_dart_1/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeController controller = Get.put(HomeController());

  final pages = [
    CalculatorPage(),
    FootballPages(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: const Text("My App"),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    "Menu",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.calculate),
                  title: const Text("Calculator"),
                  onTap: () {
                    controller.changeTab(0);
                    Navigator.pop(context); // close drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.sports_soccer),
                  title: const Text("Football"),
                  onTap: () {
                    controller.changeTab(1);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Profile"),
                  onTap: () {
                    controller.changeTab(2);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: pages[controller.currentIndex.value],
        ));
  }
}
