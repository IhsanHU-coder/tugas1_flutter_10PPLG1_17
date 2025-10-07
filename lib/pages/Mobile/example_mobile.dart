import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleMobile extends StatelessWidget {
  const ExampleMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ini mobile"),),
      body: Center(child: Text("ini contoh mobile"),),
    );
  }
}