//import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/Routes/routes.dart';
import 'package:project_dart_1/pages/HomePage.dart';
import 'package:project_dart_1/pages/calculator_page.dart';
import 'package:project_dart_1/pages/football_add_pages.dart';
import 'package:project_dart_1/pages/football_edit_pages.dart';
import 'package:project_dart_1/pages/football_pages.dart';
import 'package:project_dart_1/pages/profile_page.dart';

class AppPages{
  //list atau array yang isinya kumpulan page kita
  static final pages = [
    GetPage(name: AppRoutes.mainmenu, page: ()=> HomePage()),
    GetPage(name: AppRoutes.calculator, page: ()=> CalculatorPage()),
    GetPage(name: AppRoutes.footballplayers, page: ()=> FootballPages()),
    GetPage(name: AppRoutes.footballeditplayers, page: ()=> FootballEditPages()),
    GetPage(name: AppRoutes.footballaddplayers, page: ()=> FootballAddPages()),
    GetPage(name: AppRoutes.profile, page: ()=> ProfilePage()),
  ];
}