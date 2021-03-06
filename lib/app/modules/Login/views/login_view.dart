import 'package:dimension/dimension.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/global_widgets/textfield_ui.dart';
import 'package:indianmilan/app/modules/Login/controllers/login.dart';
import 'package:indianmilan/app/modules/login_type/controllers/login_type_controller.dart';
import 'package:indianmilan/app/modules/splash/controllers/splash_controller.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';
import 'package:indianmilan/app/utils/string_helper.dart';


class login_view extends GetView<loginController> {

  bool toggle = true;

  late Dimension beginWidth;
  late Dimension beginHeight;
  late Dimension endWidth;
  late Dimension endHeight;



  Widget getTitle() {
    return Container(
      margin: EdgeInsets.only(left: 00),
      child: TextFieldShow(
        color: Colors.orangeAccent,
        text: LOGIN,
        fontFamily: 'Lato',
        fontWeight: FontWeight.w300,
        fontsize: 25,
      ),
    );
  }

  Container getBackButton() {
    return
      Container(
      margin: EdgeInsets.only(left: 10),
      height: 80,
      width: 70,
      child: Image.asset(
        BACK_BUTTON,
        fit: BoxFit.cover,
      ),
    );;
  }

  Row getHeader() {
    return  Row(
      children: <Widget>[
        GestureDetector(
          onTap:(){
            Get.back();
          },

            child: getBackButton(),

        ),

        const Spacer(
          flex: 1,
        ),
        getTitle(),

        const Spacer(flex: 2)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // bool isScreenWide = MediaQuery.of(context).size.width >= kMinWidthOfLargeScreen;
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    beginWidth = Dimension.max(20.toPercentLength, 700.toPXLength);
    beginHeight = (90.toVHLength - 10.toPXLength);

    endWidth = Dimension.clamp(200.toPXLength, 40.toVWLength, 200.toPXLength);
    endHeight = 50.toVHLength +
        10.toPercentLength -
        Dimension.min(4.toPercentLength, 40.toPXLength);

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
                            height:  350.toPercentLength.value,
                            child: Image.asset(
                              LOGIN_BACKGRAUND,
                              fit: BoxFit.fill,
                            ),
                          ),

                        ],)

                  ),


                  Column(
                    children: <Widget>[

                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(0.0, statusBarHeight, 0.0, 0.0),
                            child: Column(
                              children: <Widget>[getHeader()],
                            ),
                          ),
                          /*Container(
                            margin: EdgeInsets.only(bottom: 10),
                            // padding: EdgeInsets.fromLTRB(20,5,20,5),
                            child: TextFieldShow(
                              color: Colors.white,
                              text: Let,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              fontsize: 14,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(00,0,30,0),
                                child: TextFieldShow(
                                  color: Colors.orangeAccent,
                                  text: mandatory,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  fontsize: 10,
                                ),
                              ),
                            ],),*/
                        ],),
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child:  Padding(
                          padding: EdgeInsets.only(top: 00,right: 30,left: 30,bottom: 20),
                          child: Card(
                            elevation: 10,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(15),
                            ),
                            child:

                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(00, 20, 00, 00),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: MediaQuery.of(context).size.height * 0.03),
                                    child: TextFieldDesigned(
                                      controller: controller.emailController,
                                      validator: (value) {
                                        if (value != null && !value.isEmail) {
                                          return 'Invalid Email ID.';
                                        }
                                        return null;
                                      },
                                      maxLines: 2,
                                      fontSize: 14,
                                      maxLength: 25,
                                      minLines: 1,
                                      hintText: "Your Email",
                                      hintStyle: Color(0xff000000),
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      readOnly: false,
                                      keyboardType: TextInputType.text,
                                      prefixIcon: Icon(
                                        Icons.email_outlined,
                                        color: Color(0xffCCD2E3),
                                        size: 16.0,
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: MediaQuery.of(context).size.height * 0.01,
                                        horizontal: MediaQuery.of(context).size.height * 0.03),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value != null && value.length < 5) {
                                          return 'Invalid Password.';
                                        }
                                        return null;
                                      },
                                      maxLength: 20,
                                      style: TextStyle(color: Color(0xffCCD2E3)),
                                      controller: controller.passwordcontroller,
                                      obscureText: controller.obscureNewPass.value,
                                      decoration: InputDecoration(
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xff36325A)),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xff36325A)),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xff36325A)),
                                          //36325A
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xff36325A)),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        border: InputBorder.none,
                                        prefixIcon: Icon(
                                          Icons.lock_outline,
                                          color: Color(0xffCCD2E3),
                                          size: 16.0,
                                        ),
                                        contentPadding: EdgeInsets.only(
                                            left: 15, top: 13, bottom: 0, right: 15),
                                        filled: true,
                                        fillColor: Color(0xffffffff),
                                        hintText: 'Password'.tr,
                                        hintStyle: TextStyle(fontSize: 14.0, color:Color(0xff000000)),
                                        suffixIcon: GestureDetector(
                                          behavior: HitTestBehavior.translucent,
                                          onTap: () {
                                            controller.obscureNewPass.value =
                                            !controller.obscureNewPass.value;
                                          },
                                          child: Icon(
                                            controller.obscureNewPass.value
                                                ? Icons.lock_rounded
                                                : Icons.lock_open,
                                            size: 24,
                                            color: Color.fromRGBO(142, 153, 183, 0.5),
                                          ),
                                        ),

                                      ),
                                    )
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    GestureDetector(
                                      onTap: (){
                                        Get.toNamed(Routes.OTP_Login_SCREEN);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(20),
                                        child: TextFieldShow(
                                          color: Colors.red,
                                          text: LOGIN_WITH_OTP,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w500,
                                          fontsize: 14,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      child: TextFieldShow(
                                        color: Colors.red,
                                        text: FORGOT_PASSWORD,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w500,
                                        fontsize: 14,
                                      ),
                                    ),


                                  ],),



                              ],),
                          ),
                        ),
                      ),

                      Container(
                        //padding: const EdgeInsets.fromLTRB(00,00,00,00),
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30,20,30,00),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () async {
                             Get.toNamed(Routes.OTP_Login_SCREEN);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 00),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: <Color>[Colors.blue, Colors.lightBlue]),
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

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(00, 30, 00, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[

                            Container(
                              padding: EdgeInsets.all(00),
                              child: TextFieldShow(
                                color: Colors.black,
                                text: DONT_ACCOUNT,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                fontsize: 14,
                              ),
                            ),
                            GestureDetector(
                              onTap:(){
                                Get.toNamed(Routes.REGISTER);
                              },

                              child:  Container(
                                padding: EdgeInsets.all(00),
                                child: TextFieldShow(
                                  color: Colors.red,
                                  text: " "+SIGNUP,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  fontsize: 14,
                                ),
                              ),

                            ),




                          ],),
                      )




                    ],)




                ],
              )

            ],),
          )
      );
  }

}
