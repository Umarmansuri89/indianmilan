import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/global_widgets/textfield_ui.dart';
import 'package:indianmilan/app/modules/Login/controllers/login.dart';
import 'package:indianmilan/app/modules/Register/controllers/Register_cotroller.dart';
import 'package:indianmilan/app/modules/Register_five/controllers/Register_five_cotroller.dart';
import 'package:indianmilan/app/modules/Register_four/controllers/Register_four_cotroller.dart';
import 'package:indianmilan/app/modules/Register_three/controllers/Register_three_cotroller.dart';
import 'package:indianmilan/app/modules/Register_two/controllers/Register_two_cotroller.dart';
import 'package:indianmilan/app/modules/login_type/controllers/login_type_controller.dart';
import 'package:indianmilan/app/modules/splash/controllers/splash_controller.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';
import 'package:indianmilan/app/utils/string_helper.dart';
import 'package:indianmilan/app/utils/toast.dart';


class Register_five_view extends GetView<Register_five_Controller> {
  String? selectedValue;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];

  @override
  Widget build(BuildContext context) {
    //LocalNotificationService.initialize(context);
    return
    Scaffold(
      body:  SingleChildScrollView(
          child: Column(children: <Widget>[
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
                      padding: EdgeInsets.fromLTRB(20,5,20,5),
                      child: TextFieldShow(
                        color: Colors.white,
                        text: career_details,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        fontsize: 18,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(20,5,20,5),
                          child: TextFieldShow(
                            color: Colors.orangeAccent,
                            text: mandatory,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            fontsize: 10,
                          ),
                        ),
                      ],),


                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10),
                      ),
                      child:
                      Container(
                        margin: EdgeInsets.fromLTRB(0,10,0,10),
                        // height: MediaQuery.of(context).size.height/1.7,
                        width  : MediaQuery.of(context).size.height/2,
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5,
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
                                          color: Colors.white,
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
                                        color: Color(0xff36325A),
                                        //36325A
                                      ),
                                      color: Colors.white,
                                      //image: DecorationImage(image: AssetImage(BORDER_PNG)),
                                    ),
                                    buttonElevation: 2,
                                    itemHeight: 40,
                                    itemPadding: EdgeInsets.only(left: 10, right: 10),
                                    dropdownMaxHeight: 200,
                                    //   dropdownWidth: 350,
                                    dropdownDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xff211D4A),
                                    ),
                                    dropdownElevation: 8,
                                    scrollbarRadius: const Radius.circular(40),
                                    scrollbarThickness: 5,
                                    scrollbarAlwaysShow: true,
                                    /*offset: const Offset(20, 0),*/
                                  ),
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5,
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
                                          color: Colors.white,
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
                                        color: Color(0xff36325A),
                                        //36325A
                                      ),
                                      color: Colors.white,
                                      //image: DecorationImage(image: AssetImage(BORDER_PNG)),
                                    ),
                                    buttonElevation: 2,
                                    itemHeight: 40,
                                    itemPadding: EdgeInsets.only(left: 10, right: 10),
                                    dropdownMaxHeight: 200,
                                    //   dropdownWidth: 350,
                                    dropdownDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xff211D4A),
                                    ),
                                    dropdownElevation: 8,
                                    scrollbarRadius: const Radius.circular(40),
                                    scrollbarThickness: 5,
                                    scrollbarAlwaysShow: true,
                                    /*offset: const Offset(20, 0),*/
                                  ),
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5,
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
                                          color: Colors.white,
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
                                        color: Color(0xff36325A),
                                        //36325A
                                      ),
                                      color: Colors.white,
                                      //image: DecorationImage(image: AssetImage(BORDER_PNG)),
                                    ),
                                    buttonElevation: 2,
                                    itemHeight: 40,
                                    itemPadding: EdgeInsets.only(left: 10, right: 10),
                                    dropdownMaxHeight: 200,
                                    //   dropdownWidth: 350,
                                    dropdownDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xff211D4A),
                                    ),
                                    dropdownElevation: 8,
                                    scrollbarRadius: const Radius.circular(40),
                                    scrollbarThickness: 5,
                                    scrollbarAlwaysShow: true,
                                    /*offset: const Offset(20, 0),*/
                                  ),
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5,
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
                                          color: Colors.white,
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
                                        color: Color(0xff36325A),
                                        //36325A
                                      ),
                                      color: Colors.white,
                                      //image: DecorationImage(image: AssetImage(BORDER_PNG)),
                                    ),
                                    buttonElevation: 2,
                                    itemHeight: 40,
                                    itemPadding: EdgeInsets.only(left: 10, right: 10),
                                    dropdownMaxHeight: 200,
                                    //   dropdownWidth: 350,
                                    dropdownDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xff211D4A),
                                    ),
                                    dropdownElevation: 8,
                                    scrollbarRadius: const Radius.circular(40),
                                    scrollbarThickness: 5,
                                    scrollbarAlwaysShow: true,
                                    /*offset: const Offset(20, 0),*/
                                  ),
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5,
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
                                          color: Colors.white,
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
                                        color: Color(0xff36325A),
                                        //36325A
                                      ),
                                      color: Colors.white,
                                      //image: DecorationImage(image: AssetImage(BORDER_PNG)),
                                    ),
                                    buttonElevation: 2,
                                    itemHeight: 40,
                                    itemPadding: EdgeInsets.only(left: 10, right: 10),
                                    dropdownMaxHeight: 200,
                                    //   dropdownWidth: 350,
                                    dropdownDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xff211D4A),
                                    ),
                                    dropdownElevation: 8,
                                    scrollbarRadius: const Radius.circular(40),
                                    scrollbarThickness: 5,
                                    scrollbarAlwaysShow: true,
                                    /*offset: const Offset(20, 0),*/
                                  ),
                                )
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 00, 10, 00),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(padding:
                                  EdgeInsets.all(10),
                                    child:   Container(
                                      width: 140,
                                      // margin: EdgeInsets.fromLTRB(40, top, right, bottom),
                                      child:   DropdownButtonHideUnderline(
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
                                                color: Colors.white,
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
                                              color: Color(0xff36325A),
                                              //36325A
                                            ),
                                            color: Colors.white,
                                            //image: DecorationImage(image: AssetImage(BORDER_PNG)),
                                          ),
                                          itemHeight: 40,
                                          itemPadding: const EdgeInsets.only(left: 14, right: 14),
                                          dropdownMaxHeight: 200,
                                          dropdownWidth: 200,
                                          //dropdownPadding: null,
                                          //   dropdownWidth: 350,
                                          dropdownDecoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Color(0xff211D4A),
                                          ),
                                          dropdownElevation: 8,
                                          scrollbarRadius: const Radius.circular(40),
                                          scrollbarThickness: 5,
                                          scrollbarAlwaysShow: true,
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(padding:
                                  EdgeInsets.all(10),
                                    child:   Container(
                                      width: 140,
                                      // margin: EdgeInsets.fromLTRB(40, top, right, bottom),
                                      child:   DropdownButtonHideUnderline(
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
                                                color: Colors.white,
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
                                              color: Color(0xff36325A),
                                              //36325A
                                            ),
                                            color: Colors.white,
                                            //image: DecorationImage(image: AssetImage(BORDER_PNG)),
                                          ),
                                          itemHeight: 40,
                                          itemPadding: const EdgeInsets.only(left: 14, right: 14),
                                          dropdownMaxHeight: 200,
                                          dropdownWidth: 200,
                                          //dropdownPadding: null,
                                          //   dropdownWidth: 350,
                                          dropdownDecoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Color(0xff211D4A),
                                          ),
                                          dropdownElevation: 8,
                                          scrollbarRadius: const Radius.circular(40),
                                          scrollbarThickness: 5,
                                          scrollbarAlwaysShow: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 00, 10, 00),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(padding:
                                  EdgeInsets.all(10),
                                    child:   Container(
                                      width: 140,
                                      // margin: EdgeInsets.fromLTRB(40, top, right, bottom),
                                      child:   DropdownButtonHideUnderline(
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
                                                color: Colors.white,
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
                                              color: Color(0xff36325A),
                                              //36325A
                                            ),
                                            color: Colors.white,
                                            //image: DecorationImage(image: AssetImage(BORDER_PNG)),
                                          ),
                                          itemHeight: 40,
                                          itemPadding: const EdgeInsets.only(left: 14, right: 14),
                                          dropdownMaxHeight: 200,
                                          dropdownWidth: 200,
                                          //dropdownPadding: null,
                                          //   dropdownWidth: 350,
                                          dropdownDecoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Color(0xff211D4A),
                                          ),
                                          dropdownElevation: 8,
                                          scrollbarRadius: const Radius.circular(40),
                                          scrollbarThickness: 5,
                                          scrollbarAlwaysShow: true,
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(padding:
                                  EdgeInsets.all(10),
                                    child:   Container(
                                      width: 140,
                                      // margin: EdgeInsets.fromLTRB(40, top, right, bottom),
                                      child:   DropdownButtonHideUnderline(
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
                                                color: Colors.white,
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
                                              color: Color(0xff36325A),
                                              //36325A
                                            ),
                                            color: Colors.white,
                                            //image: DecorationImage(image: AssetImage(BORDER_PNG)),
                                          ),
                                          itemHeight: 40,
                                          itemPadding: const EdgeInsets.only(left: 14, right: 14),
                                          dropdownMaxHeight: 200,
                                          dropdownWidth: 200,
                                          //dropdownPadding: null,
                                          //   dropdownWidth: 350,
                                          dropdownDecoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Color(0xff211D4A),
                                          ),
                                          dropdownElevation: 8,
                                          scrollbarRadius: const Radius.circular(40),
                                          scrollbarThickness: 5,
                                          scrollbarAlwaysShow: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],),
                            ),




                          ],),
                      ),
                    ),
                    Container(
                      //padding: const EdgeInsets.fromLTRB(00,00,00,00),
                      height: 50,
                      margin: EdgeInsets.fromLTRB(30,20,30,20),
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
                            text: Continue,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            fontsize: 20,
                          ),
                        ),
                        onTap: () async {

                          Get.offAllNamed(Routes.REGISTER_SIX);
                        },
                      ),
                    ),





                  ],)




              ],
            )

          ],)
      ),
    );
   }
}
