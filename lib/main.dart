import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/Routes/pages.dart';
import 'package:project_dart_1/Routes/routes.dart';
import 'package:project_dart_1/controllers/contact_controller.dart';
import 'package:project_dart_1/controllers/example_controller.dart';
import 'package:project_dart_1/controllers/football_controller.dart';
import 'package:project_dart_1/controllers/login_controller.dart';
import 'package:project_dart_1/controllers/splashscreen_controller.dart';
import 'package:project_dart_1/pages/calculator_page.dart';

void main() {
  Get.put(LoginController()); // ini global, bisa diakses Get.find di manapun
  Get.put(SplashscreenController());
  Get.put(ContactController());
  Get.put(FootballController());
  Get.put(ExampleController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //initialRoute: AppRoutes.mainmenu,
      //initialRoute: AppRoutes.splashScreen,
      initialRoute: AppRoutes.examplescreen,
      getPages: AppPages.pages,
    );
  }
}
