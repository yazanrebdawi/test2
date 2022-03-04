// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class ConfirmResetPasswordController extends GetxController {
  String code = 'Insert code';

  List<String> listbuttonval = [];

  void delet() {
    if (listbuttonval.isNotEmpty) {
      listbuttonval.removeLast().isEmpty;
      update();
    }
  }

  void change() {
    if (listbuttonval.isNotEmpty) {
      code = listbuttonval.reduce((value, element) {
        return value + element;
      });
    } else if (listbuttonval.isEmpty) {
      code = 'Insert code';
    }
    update();
  }
}
