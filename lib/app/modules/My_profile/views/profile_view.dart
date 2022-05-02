import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/modules/Home/controllers/HomeNavigation.dart';
import 'package:indianmilan/app/modules/Login/views/login_view.dart';
import 'package:indianmilan/app/modules/My_profile/controllers/profile_controller.dart';
import 'package:indianmilan/app/utils/image_helper.dart';


class profile_view extends GetView<profile_controller> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
         title: TextFieldShow(
           color: Colors.white,
           text: "My Profile",
           fontFamily: 'Lato',
           fontWeight: FontWeight.w500,
           fontsize: 14,
         ),
         centerTitle: true,

         flexibleSpace: Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
                 begin: Alignment.centerLeft,
                 end: Alignment.centerRight,
                 colors: <Color>[Colors.blue, Colors.pink]),
           ),
         ),

         actions: [
           Container(
             margin: EdgeInsets.only(right: 12),
             child: Icon(Icons.notifications_none_outlined,color: Colors.white,),
           )
         ],
       ),
      body: Column(
        children: <Widget>[

          Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                PROFILE,
                width:200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                edit_profile,
                width:20,
                height: 20,
              ),
            ),

          ],
          )




      ],)
    );
  }

}


