import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/global_widgets/textfield_ui.dart';
import 'package:indianmilan/app/modules/Login/controllers/login.dart';
import 'package:indianmilan/app/modules/OTP_screen/controllers/OTP_cotroller.dart';
import 'package:indianmilan/app/modules/Register/controllers/Register_cotroller.dart';
import 'package:indianmilan/app/modules/Upload_photo_screen/controllers/Upload_photo_cotroller.dart';
import 'package:indianmilan/app/modules/login_type/controllers/login_type_controller.dart';
import 'package:indianmilan/app/modules/splash/controllers/splash_controller.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';
import 'package:indianmilan/app/utils/string_helper.dart';
import 'package:indianmilan/app/utils/toast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Upload_photo_view extends GetView<Upload_photo_Controller> {
  bool hasError = false;
  @override
  Widget build(BuildContext context) {
    //LocalNotificationService.initialize(context);
    return
    Scaffold(
      backgroundColor: Colors.white,
      body:
          SingleChildScrollView(
            child:  Column(children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child:
                      Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height/3,
                            child: Image.asset(
                              UPLOAD_PHOTO,
                              fit: BoxFit.fill,
                            ),
                          ),

                        ],)


                  ),

                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              BACK_BUTTON,
                              fit: BoxFit.fill,
                            ),
                          ),

                          Container(
                            height: 50,
                            width: 200,
                            padding: EdgeInsets.all(00),
                            margin: EdgeInsets.fromLTRB(20, 00, 00, 00),
                            child:  Image.asset(
                              SPLASH_IMAGE,
                              fit: BoxFit.fill,
                            ),
                          ),


                        ],),


                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 10,right: 20),
                        padding: EdgeInsets.all(00),
                        child: TextFieldShow(
                          color: Colors.orangeAccent,
                          text: Add_Photos_Leter,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontsize: 18,
                        ),
                      ),


                      Padding(
                          padding: EdgeInsets.only(left: 100,bottom: 50,top: 00,right: 100),
                          child:
                              Container(
                                child:  Image.asset(
                                  PROFILE,
                                  fit: BoxFit.fill,
                                ),
                              ),

                      )
                      ,


                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(00),
                        child: TextFieldShow(
                          color: Colors.black,
                          text: Add_Your_Photos,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontsize: 18,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(00),
                        child: TextFieldShow(
                          color: Colors.black,
                          text: Complete_Your_Photos,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontsize: 18,
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
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.blue,
                                width: 1,
                              ),
                            ),
                            child: TextFieldShow(
                              color: Colors.white,
                              text: Create_Profile,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              fontsize: 16,
                            ),
                          ),
                          onTap: () async {
                            Get.offAllNamed(Routes.PARTNER_PREFERENCE_SCREEN);

                            //Get.offAllNamed(Routes.REGISTER_TWO);
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
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                      CEMERA,
                                      fit: BoxFit.fill,
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.all(10),
                                  child:
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: TextFieldShow(
                                          color: Colors.black,
                                          text: Create_Profile,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w500,
                                          fontsize: 16,
                                        ),
                                      )
                                  )
                                  ],)
                          ),
                          onTap: () async {

                          },
                        ),
                      ),
                    ],)
                ],
              )

            ],),
          )
     ,
    );
  }
}
