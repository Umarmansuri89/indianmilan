import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indianmilan/app/modules/splash/controllers/splash_controller.dart';
import 'package:indianmilan/app/utils/image_helper.dart';


class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    //LocalNotificationService.initialize(context);
    return Container(
      color: Color(0xff0D0B21),
      child: Stack(
        children: [
          Obx(() => SizedBox(
            height: controller.count.value.toDouble(),
          )),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  //   child: SvgPicture.asset(
                  //     SPLASH_1,
                  //   ),
                  // ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    CANDY,
                    width: 90,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
