import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/controllers/example_controller.dart';
import 'package:project_dart_1/controllers/example_footballplayer_controller.dart';
import 'package:project_dart_1/pages/Mobile/example_football_pages.dart';
import 'package:project_dart_1/pages/Mobile/example_mobile.dart';
import 'package:project_dart_1/pages/Widescreen/example_football_pages_wide.dart';
import 'package:project_dart_1/pages/Widescreen/example_widescreen.dart';

class ExampleFootballplayerPage  extends StatelessWidget {
  ExampleFootballplayerPage({super.key});

  final controller = Get.find<ExampleFootballplayerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constrains){
          controller.updateLayout(constrains);
        return Obx(()=> controller.isMobile.value
         ? ExampleFootballPages()
         : ExampleFootballPagesWide());
      }),
    );
  }
}