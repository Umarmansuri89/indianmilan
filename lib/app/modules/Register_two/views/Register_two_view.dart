import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/global_widgets/textfield_ui.dart';
import 'package:indianmilan/app/modules/Login/controllers/login.dart';
import 'package:indianmilan/app/modules/Register/controllers/Register_cotroller.dart';
import 'package:indianmilan/app/modules/Register_two/controllers/Register_two_cotroller.dart';
import 'package:indianmilan/app/modules/login_type/controllers/login_type_controller.dart';
import 'package:indianmilan/app/modules/splash/controllers/splash_controller.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';
import 'package:indianmilan/app/utils/string_helper.dart';
import 'package:indianmilan/app/utils/toast.dart';


class Register_two_view extends GetView<Register_two_Controller> {

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
                            height: MediaQuery.of(context).size.height/1.8,
                            child: Image.asset(
                              LOGIN_BACKGRAUND,
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
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.fromLTRB(40, 00, 00, 00),
                            child: TextFieldShow(
                              color: Colors.orangeAccent,
                              text: SIGNUP,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w300,
                              fontsize: 30,
                            ),
                          ),


                        ],),

                      Container(
                        padding: EdgeInsets.fromLTRB(20,5,20,5),
                        child: TextFieldShow(
                          color: Colors.white,
                          text: GREAT,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontsize: 18,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(20,5,20,0),
                            child: TextFieldShow(
                              color: Colors.orangeAccent,
                              text: mandatory,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              fontsize: 10,
                            ),
                          ),
                        ],),


                      Padding(
                        padding: EdgeInsets.only(top: 10,right: 30,left: 30,bottom: 20),
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
                                margin: EdgeInsets.fromLTRB(00, 10, 00, 00),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5,
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
                              Container(
                                margin: EdgeInsets.fromLTRB(00, 10, 00, 00),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5,
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
                              Container(
                                margin: EdgeInsets.fromLTRB(00, 10, 00, 00),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5,
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
                                    vertical: 10,
                                    horizontal: MediaQuery.of(context).size.height * 0.03),
                                child: TextFieldDesigned(
                                  controller: controller.dobCntroller,
                                  onTap: () => controller.selectDatedialog(context),
                                  readOnly: true,
                                  hintStyle: Colors.white,
                                  hintText: "Party Date",
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: MediaQuery.of(context).size.height * 0.03),
                                  child:  DropdownButtonHideUnderline(
                                    child: DropdownButton2(
                                      isExpanded: true,
                                      hint: Row(
                                        children: const [
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "Select Topic",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Lato',
                                                color: Colors.black,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      items: controller.items_party_type
                                          .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                          .toList(),
                                      value: controller.selectedValue,
                                      onChanged: (value) {
                                        Toast.show(value.toString());
                                        // setState(() {
                                        //
                                        // });
                                        controller.selectedValue = value as String;
                                      },
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                      ),
                                      iconOnClick: const Icon(
                                        Icons.keyboard_arrow_up,
                                        color: Colors.black,
                                      ),
                                      iconSize: 14,
                                      iconEnabledColor: Colors.white,
                                      iconDisabledColor: Colors.grey,
                                      buttonHeight: 50,
                                      buttonWidth: double.infinity,
                                      buttonPadding:
                                      const EdgeInsets.only(left: 14, right: 14),
                                      dropdownPadding:
                                      EdgeInsets.only(left: 14, right: 14),
                                      buttonDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Color(0xffc5c4c7),
                                          //36325A
                                        ),
                                        color: Colors.white,
                                        //image: DecorationImage(image: AssetImage(BORDER_PNG)),
                                      ),
                                      //buttonElevation: 2,
                                      itemHeight: 40,
                                      itemPadding: EdgeInsets.only(left: 10, right: 10),
                                      dropdownMaxHeight: 200,
                                      //   dropdownWidth: 350,
                                      dropdownDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        //color: Color(0xff211D4A),
                                      ),
                                      dropdownElevation: 8,
                                      scrollbarRadius: const Radius.circular(40),
                                      scrollbarThickness: 5,
                                      scrollbarAlwaysShow: true,
                                      /*offset: const Offset(20, 0),*/
                                    ),
                                  )
                              ),

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
                              text: SIGNUP,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              fontsize: 20,
                            ),
                          ),
                          onTap: () async {
                            Get.offAllNamed(Routes.REGISTER_THREE);
                          },
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.fromLTRB(00, 10, 00, 00),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[

                            Container(
                              padding: EdgeInsets.all(00),
                              child: TextFieldShow(
                                color: Colors.black,
                                text: Already_ACCOUNT,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                fontsize: 14,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(00),
                              child: TextFieldShow(
                                color: Colors.red,
                                text: " "+LOGIN,
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

            ],),
          )


      );
  }
}


