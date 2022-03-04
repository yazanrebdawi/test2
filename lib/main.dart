import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/confirm_reset%20_password/confirm_reset_password.dart';

import 'log/log.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ConfirmPassword',
      getPages: [
        GetPage(name: '/ConfirmPassword', page: () => ConfirmPassword()),
        GetPage(name: '/Login', page: () => Log()),
      ],
    );
  }
}
