// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import '../confirm_reset _password/confirm_rest_password_controller.dart';

class CoustumeTextFilde extends StatelessWidget {
  final String hinttext;

  ConfirmResetPasswordController controller =
      Get.put<ConfirmResetPasswordController>(ConfirmResetPasswordController());

  CoustumeTextFilde({
    required this.hinttext,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Neumorphic(
        style: NeumorphicStyle(
          oppositeShadowLightSource: true,
          shadowLightColorEmboss: Color.fromARGB(255, 236, 234, 234),
          shadowLightColor: textcolor,
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(
            size.width * 0.3,
          )),
          depth: -4,
          lightSource: LightSource.bottomRight,
          shadowDarkColorEmboss: textcolor,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: back,
          ),
          child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text(
                      hinttext,
                      style: TextStyle(
                          color: textformcolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 20,
                      child: GestureDetector(
                        onTap: () {
                          controller.delet();
                          controller.change();
                        },
                        child: SvgPicture.asset(
                            "assets/images/Icon awesome-backspace.svg"),
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
