import 'package:get/get.dart';

class LogController extends GetxController {
  String stat = 'Login';
  String imageUrl = 'assets/images/icon power.svg';
  bool sta = true;
  void changeStat() {
    if (sta == false) {
      stat = 'Logout';
      imageUrl = 'assets/images/icon power 2.svg';
      sta = !sta;
    } else if (sta == true) {
      stat = 'Login';
      imageUrl = 'assets/images/icon power.svg';
      sta = !sta;
    }

    update();
  }
}
