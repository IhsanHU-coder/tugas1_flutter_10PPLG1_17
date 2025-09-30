import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/controllers/calculator_controller.dart';
import 'package:project_dart_1/controllers/contact_controller.dart';
import 'package:project_dart_1/controllers/football_controller.dart';
import 'package:project_dart_1/controllers/home_controller.dart';
import 'package:project_dart_1/controllers/login_controller.dart';
import 'package:project_dart_1/pages/calculator_page.dart';
import 'package:project_dart_1/pages/contact_page.dart';
import 'package:project_dart_1/pages/football_pages.dart';
import 'package:project_dart_1/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeController controller = Get.put(HomeController());

  final pages = [
    CalculatorPage(),
    FootballPages(),
    ProfilePage(),
    ContactPage()
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
                    Get.lazyPut<CalculatorController>(() => CalculatorController()); // inject dulu
                    Get.to(() => CalculatorPage());
                    // controller.changeTab(0);
                    // Navigator.pop(context); // close drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.sports_soccer),
                  title: const Text("Football"),
                  onTap: () {
                    Get.lazyPut<FootballController>(() => FootballController()); // inject dulu
                    Get.to(() => FootballPages());
                    // controller.changeTab(1);
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Profile"),
                  onTap: () {
                    Get.lazyPut<LoginController>(() => LoginController()); // inject dulu
                    Get.to(() => ProfilePage());
                    // controller.changeTab(2);
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Contact"),
                  onTap: () {
                    Get.lazyPut<ContactController>(() => ContactController());
                    Get.to(() => const ContactPage());
                    // controller.changeTab(3);
                    // Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: pages[controller.currentIndex.value],
        ));
  }
}
