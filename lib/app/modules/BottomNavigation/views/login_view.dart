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

  @override
  Widget build(BuildContext context) {
    //LocalNotificationService.initialize(context);
    return

     Column(children: <Widget>[
       Stack(
         children: <Widget>[

           Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
               decoration: BoxDecoration(
                 color: Colors.white,
                 // image: const DecorationImage(
                 //   image: AssetImage(LOGIN_BACKGRAUND),
                 //   fit: BoxFit.cover,
                 // ),
               ),
               child:
               Column(
                 children: <Widget>[
                   Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/1.8,
                    child: Image.asset(
                    LOGIN_BACKGRAUND,
                    fit: BoxFit.fill,
                    ),
                ),

                 ],)


           ),

           Column(children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[

                 GestureDetector(
                   onTap:() =>{
                      Get.offAllNamed(Routes.LOGIN_TYPE)
                      },
                   child:  Container(
                     height: 80,
                     width: 80,
                     child: Image.asset(
                       BACK_BUTTON,
                       fit: BoxFit.fill,
                     ),
                   ),
                 ),

                 Container(
                   height: 20,
                   width: 20,
                 )


             ],),

             Container(
               padding: EdgeInsets.all(20),
               child: TextFieldShow(
                 color: Colors.white,
                 text: LOGIN,
                 fontFamily: 'Lato',
                 fontWeight: FontWeight.w500,
                 fontsize: 40,
               ),
             ),


             Card(
               clipBehavior: Clip.antiAliasWithSaveLayer,
               shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(10),
               ),
               child:

               Container(
                 height: MediaQuery.of(context).size.height/2.8,
                 width  : MediaQuery.of(context).size.height/2,

                child: Column(
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
                        Container(
                          padding: EdgeInsets.all(20),
                          child: TextFieldShow(
                            color: Colors.red,
                            text: LOGIN_WITH_OTP,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            fontsize: 14,
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
                     borderRadius: BorderRadius.circular(5),
                     border: Border.all(
                       color: Colors.blue,
                       width: 1,
                     ),
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


                 },
               ),
             ),
             Container(
               margin: EdgeInsets.fromLTRB(00, 80, 00, 00),
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
                   Container(
                     padding: EdgeInsets.all(00),
                     child: TextFieldShow(
                       color: Colors.red,
                       text: " "+REGIDTER_NOW,
                       fontFamily: 'Lato',
                       fontWeight: FontWeight.w500,
                       fontsize: 14,
                     ),
                   ),


                 ],),
             )




           ],)




         ],
       )

     ],);

  }
}
