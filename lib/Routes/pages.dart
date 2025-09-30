//import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/Login_Page.dart';
import 'package:project_dart_1/Routes/routes.dart';
import 'package:project_dart_1/bindings/calculator_binding.dart';
import 'package:project_dart_1/bindings/contact_binding.dart';
import 'package:project_dart_1/bindings/login_binding.dart';
import 'package:project_dart_1/bindings/splashscreen_binding.dart';
import 'package:project_dart_1/pages/HomePage.dart';
import 'package:project_dart_1/pages/calculator_page.dart';
import 'package:project_dart_1/pages/contact_page.dart';
import 'package:project_dart_1/pages/football_add_pages.dart';
import 'package:project_dart_1/pages/football_edit_pages.dart';
import 'package:project_dart_1/pages/football_pages.dart';
import 'package:project_dart_1/pages/login_page.dart';
import 'package:project_dart_1/pages/profile_page.dart';
import 'package:project_dart_1/pages/splashscreen_page.dart';

class AppPages{
  //list atau array yang isinya kumpulan page kita
  static final pages = [
    GetPage(name: AppRoutes.mainmenu, page: ()=> HomePage()),
    GetPage(
      name: AppRoutes.calculator, 
      page: ()=> CalculatorPage(),
      binding: CalculatorBinding(),
      ),
    GetPage(
      name: AppRoutes.footballplayers, 
      page: ()=> FootballPages(),
      binding: CalculatorBinding(),
      ),
    GetPage(
      name: AppRoutes.footballeditplayers, 
      page: ()=> FootballEditPages(),
      binding: CalculatorBinding(),
      ),
    GetPage(name: AppRoutes.footballaddplayers, page: ()=> FootballAddPages()),
    GetPage(name: AppRoutes.profile, page: ()=> ProfilePage(), binding: LoginBinding()),

    //tambah routes page baru
    GetPage(name: AppRoutes.splashScreen, page: ()=> SplashscreenPage(), binding: SplashscreenBinding()),
    GetPage(name: AppRoutes.login, page: ()=> LoginPages(), binding: LoginBinding()),
    GetPage(name: AppRoutes.contact, page: ()=> ContactPage(), binding: ContactBinding()),
  ];
}