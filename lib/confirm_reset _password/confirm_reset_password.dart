// ignore_for_file: must_be_immutable, prefer_const_constructors, unnecessary_string_interpolations, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test2/confirm_reset%20_password/confirm_rest_password_controller.dart';
import 'package:test2/constant.dart';

import 'package:test2/mywidget/coustome_text_filde.dart';

import '../log/log.dart';

class ConfirmPassword extends StatelessWidget {
  ConfirmResetPasswordController controller =
      Get.put<ConfirmResetPasswordController>(ConfirmResetPasswordController());

  ConfirmPassword({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: Container(
        height: size.height,
        width: size.width,
        color: back,
        child: Column(children: [
          Expanded(
            // height: size.height * 0.3,
            child: Stack(
              children: [
                Positioned(
                    top: -90,
                    left: -90,
                    child: Neumorphic(
                        style: NeumorphicStyle(
                          oppositeShadowLightSource: true,
                          shadowLightColor: textcolor,
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(
                            100,
                          )),
                          depth: 15,
                          lightSource: LightSource.topLeft,
                        ),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: back,
                        ))),
                Positioned(
                    top: 20,
                    left: 100,
                    right: 100,
                    child: SvgPicture.asset('assets/images/Logo.svg')),
                Positioned(
                    top: 20,
                    right: -120,
                    child: Neumorphic(
                        style: NeumorphicStyle(
                          intensity: 3,
                          oppositeShadowLightSource: true,
                          shadowDarkColor: mywhite,
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(100)),
                          depth: 20,
                          lightSource: LightSource.right,
                        ),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: back,
                        ))),
                Positioned(
                  bottom: 30,
                  left: 35,
                  child: textbuild('Welcome'),
                ),
                Positioned(
                  bottom: 0,
                  left: 35,
                  child: textbuild('Lets get started'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2, left: 34, right: 33, bottom: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 2,
                ),
                GetBuilder<ConfirmResetPasswordController>(
                    init: ConfirmResetPasswordController(),
                    builder: (_) =>
                        CoustumeTextFilde(hinttext: '${controller.code}')),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: size.height * 0.33,
                  width: size.width * 0.55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomeButton('1'),
                          CustomeButton('2'),
                          CustomeButton('3'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomeButton('4'),
                          CustomeButton('5'),
                          CustomeButton('6'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomeButton('7'),
                          CustomeButton('8'),
                          CustomeButton('9'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomeButton('*'),
                          CustomeButton('0'),
                          CustomeButton('#'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  'Resend code',
                  style: TextStyle(
                    fontSize: 15,
                    color: textcolor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape:
                            NeumorphicBoxShape.roundRect(BorderRadius.circular(
                          30,
                        )),
                        depth: 10,
                        lightSource: LightSource.topLeft,
                        oppositeShadowLightSource: true,
                        shadowLightColor: textformcolor,
                        shadowDarkColor: mywhite,
                      ),
                      child: GestureDetector(
                        onTap: () => Get.off(Log()),
                        child: Container(
                          height: 51,
                          width: size.width * 0.35,
                          color: back,
                          alignment: Alignment.center,
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                                fontSize: 20,
                                color: textcolor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }

  Container textbuild(String text) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: textcolor),
      ),
    );
  }

  GestureDetector CustomeButton(String val) {
    return GestureDetector(
      onTap: () {
        controller.listbuttonval.add(val);

        controller.change();
      },
      child: Neumorphic(
          style: NeumorphicStyle(
            intensity: 0.9,
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(100)),
            depth: 15,
            lightSource: LightSource.topLeft,
            oppositeShadowLightSource: true,
            shadowLightColor: textformcolor,
            shadowDarkColor: mywhite,
          ),
          child: Container(
              decoration: BoxDecoration(
                color: back,
              ),
              child: SizedBox(
                height: 45,
                width: 45,
                child: CircleAvatar(
                  backgroundColor: back,
                  child: Text(
                    val,
                    style: TextStyle(
                        fontSize: 20,
                        color: textcolor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ))),
    );
  }
}
