// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constant.dart';
import 'log_controller.dart';

class Log extends StatelessWidget {
  LogController controller = Get.put<LogController>(LogController());
  Log({Key? key}) : super(key: key);

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
            Padding(
              padding: EdgeInsets.only(
                top: 26,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconbuild(size, 'menu'),
                  SvgPicture.asset('assets/images/Logo.svg'),
                  iconbuild(size, 'Union 44'),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            textbuild('Welcome back \n    dear asma'),
            SizedBox(
              height: 50,
            ),
            Neumorphic(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(
                    30,
                  )),
                  depth: -6,
                  lightSource: LightSource.bottomRight,
                  oppositeShadowLightSource: true,
                  shadowDarkColorEmboss: textformcolor,
                  shadowLightColorEmboss: mywhite,
                ),
                child: Container(
                    height: size.width * 0.45,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(color: back),
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(
                              100,
                            )),
                            depth: 10,
                            lightSource: LightSource.topLeft,
                            oppositeShadowLightSource: true,
                            shadowLightColor: textformcolor,
                            shadowDarkColor: mywhite,
                          ),
                          child: GestureDetector(
                            onTap: () => controller.changeStat(),
                            child: CircleAvatar(
                              backgroundColor: back,
                              child: GetBuilder<LogController>(
                                  init: LogController(),
                                  builder: (_) =>
                                      SvgPicture.asset(controller.imageUrl)),
                            ),
                          )),
                    ))),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      top: 10,
                      left: -size.width * 0.15,
                      child: Neumorphic(
                          style: NeumorphicStyle(
                            oppositeShadowLightSource: true,
                            shadowLightColor: textcolor,
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(
                              size.width * 0.16,
                            )),
                            depth: 10,
                            lightSource: LightSource.topLeft,
                          ),
                          child: CircleAvatar(
                            radius: size.width * 0.16,
                            backgroundColor: back,
                          ))),
                  Positioned(
                      left: size.width * 0.3,
                      right: size.width * 0.3,
                      child: Container(
                        alignment: Alignment.center,
                        child: GetBuilder<LogController>(
                            init: LogController(),
                            builder: (_) => Text(
                                  controller.stat,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: textcolor),
                                )),
                      )),
                  Positioned(
                      bottom: -size.width * 0.22,
                      right: -size.width * 0.22,
                      child: Neumorphic(
                          style: NeumorphicStyle(
                            intensity: 3,
                            oppositeShadowLightSource: true,
                            shadowDarkColor: mywhite,
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(
                              size.width * 0.22,
                            )),
                            depth: 20,
                            lightSource: LightSource.right,
                          ),
                          child: CircleAvatar(
                            radius: size.width * 0.22,
                            backgroundColor: back,
                          ))),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Neumorphic iconbuild(Size size, String imagesrc) {
    return Neumorphic(
        style: NeumorphicStyle(
          intensity: 0.9,
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(
            size.width * 1,
          )),
          depth: 15,
          lightSource: LightSource.topLeft,
          oppositeShadowLightSource: true,
          shadowLightColor: textformcolor,
          shadowDarkColor: mywhite,
        ),
        child: CircleAvatar(
          backgroundColor: back,
          child: SvgPicture.asset('assets/images/$imagesrc.svg'),
        ));
  }

  Container textbuild(String text) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: textcolor),
      ),
    );
  }
}
