import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/global_widgets/textfield_ui.dart';
import 'package:indianmilan/app/modules/Login/controllers/login.dart';
import 'package:indianmilan/app/modules/OTP_screen/controllers/OTP_cotroller.dart';
import 'package:indianmilan/app/modules/Register/controllers/Register_cotroller.dart';
import 'package:indianmilan/app/modules/login_type/controllers/login_type_controller.dart';
import 'package:indianmilan/app/modules/splash/controllers/splash_controller.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';
import 'package:indianmilan/app/utils/string_helper.dart';
import 'package:indianmilan/app/utils/toast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class OTP_view extends GetView<OTP_Controller> {
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
                              OTP_BACKGRAUND,
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





                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Image.asset(
                            CONGRACULATION,
                            fit: BoxFit.fill,
                          )
                      )
                      ,


                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(00),
                        child: TextFieldShow(
                          color: Colors.black,
                          text: digit_OTP,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontsize: 14,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.all(00),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(00),
                              child: TextFieldShow(
                                color: Colors.red,
                                text: mobile,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                fontsize: 14,
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              padding: EdgeInsets.all(00),
                              margin: EdgeInsets.fromLTRB(10, 00, 00, 00),
                              child:  Image.asset(
                                EDIT_MOBILE,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],),
                      ),


                      GestureDetector(
                          onLongPress: () {
                            print("LONG");
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content:
                                    Text("Paste clipboard stuff into the pinbox?"),
                                    actions: <Widget>[
                                      FlatButton(
                                          onPressed: () async {
                                            var copiedText =
                                            await Clipboard.getData("text/plain");
                                            // if (copiedText.text.isNotEmpty) {
                                            //   // controller1.text = copiedText.text;
                                            // }
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("YES")),
                                      FlatButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("No"))
                                    ],
                                  );
                                });
                          },
                          child:
                          Padding(
                              padding: EdgeInsets.only(left: 60,right: 60),
                              child: PinCodeTextField(

                                appContext: context,
                                pastedTextStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                length: 4,
                                obscureText: false,
                                obscuringCharacter: '*',
                                animationType: AnimationType.fade,
                                /*validator: (v) {
                            if (v.length < 1) {
                              return "I'm from validator";
                            } else {
                              return null;
                            }
                          },*/
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(5),
                                  fieldHeight: 60,
                                  fieldWidth: 50,
                                  selectedFillColor: Colors.white,
                                  activeColor: Colors.black,
                                  selectedColor: Colors.black,
                                  inactiveFillColor: Colors.white,
                                  inactiveColor: Colors.black,
                                  activeFillColor: hasError ? Colors.white : Colors.white,
                                ),
                                cursorColor: Colors.black,
                                animationDuration: Duration(milliseconds: 300),
                                textStyle: TextStyle(fontSize: 20, height: 1.6,color: Colors.black),
                                backgroundColor: Colors.white,
                                enableActiveFill: true,

                                // errorAnimationController: errorController,
                                // controller: controller1,
                                keyboardType: TextInputType.number,
                                boxShadows: [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    color: Colors.black12,
                                    blurRadius: 10,
                                  )
                                ],
                                onCompleted: (v) {
                                  print("Completed");
                                },
                                // onTap: () {
                                //   print("Pressed");
                                // },
                                onChanged: (value) {
                                  print(value);

                                  controller.currentText.value = value.toString();


                                },
                                beforeTextPaste: (text) {
                                  print("Allowing to paste $text");
                                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                  return true;
                                },
                              )
                          )

                      ),
                      Container(
                        //padding: const EdgeInsets.fromLTRB(00,00,00,00),
                        height: 50,
                        margin: EdgeInsets.fromLTRB(100,20,100,00),
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
                              text: VERIFY,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              fontsize: 20,
                            ),
                          ),
                          onTap: () async {

                            Get.offAllNamed(Routes.UPLOAD_PHOTO_SCREEN);
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: TextFieldShow(
                          color: Colors.black,
                          text: receive_OTP,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontsize: 14,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextFieldShow(
                          color: Colors.red,
                          text: Resend_OTP,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontsize: 14,
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
