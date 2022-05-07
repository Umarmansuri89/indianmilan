import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/modules/login_type/controllers/login_type_controller.dart';
import 'package:indianmilan/app/modules/splash/controllers/splash_controller.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';
import 'package:indianmilan/app/utils/string_helper.dart';


class login_type_View extends GetView<login_typeController> {

  @override
  Widget build(BuildContext context) {
    //LocalNotificationService.initialize(context);
    return
      Scaffold(
        body: Container(
          color: Color(0xff0D0B21),
          child:
          Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(LOGIN_TYPE_BACKGRAUND),
                  fit: BoxFit.cover,
                ),
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child:
              Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/1.8,
                    child: Image.asset(
                      LOGIN_TYPE_COUPLE,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(00, 10, 00, 00),
                    child: TextFieldShow(
                      color: Colors.black,
                      text: LOGIN_TYPE_TEXT,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      fontsize: 20,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(60,10,60,20),
                    child: Image.asset(
                      SPLASH_IMAGE,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(

                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    child: GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 00),
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFieldShow(
                          color: Colors.white,
                          text: LOGIN,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontsize: 20,
                        ),
                      ),
                      onTap: () async {

                        Get.toNamed(Routes.LOGIN);


                      },
                    ),
                  ),
                  Container(
                    //padding: const EdgeInsets.fromLTRB(00,00,00,00),
                    height: 50,
                    margin: EdgeInsets.fromLTRB(30,20,30,00),
                    alignment: Alignment.center,
                    child: GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 00),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        child: TextFieldShow(
                          color: Colors.white,
                          text: SIGNUP,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontsize: 20,
                        ),
                      ),
                      onTap: () async {

                        Get.toNamed(Routes.REGISTER);
                      },
                    ),
                  ),
                ],)


          ),



        )
      );
  }
}
