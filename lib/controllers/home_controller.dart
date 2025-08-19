import 'package:get/get.dart';

class HomeController extends GetxController {
  // index bottom nav
  var currentIndex = 0.obs;

  // fungsi ganti tab
  void changeTab(int index) {
    currentIndex.value = index;
  }
}
