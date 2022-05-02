import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/modules/Home/controllers/HomeNavigation.dart';
import 'package:indianmilan/app/modules/Login/views/login_view.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';


// class Home_view extends StatefulWidget {
//   const Home_view({Key? key}) : super(key: key);
//
//   @override
//   State<Home_view> createState() => _Home_viewState();
// }

class Home_view extends GetView<HomeNavigation> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: ListView(
    // Important: Remove any padding from the ListView.
       padding: EdgeInsets.zero,
       children: [
         DrawerHeader(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(Drawer_Couple),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(PROFILE),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(00, 10, 00, 00),
                    child: Text(
                      ('ABC'),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Playfair Display',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width / 2.1,
                    margin: EdgeInsets.fromLTRB(20, 00, 00, 00),
                    child: Text(
                      ('Chetan@gmail.com'),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Playfair Display',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Icon(
             Icons.group,
             color: Colors.black,
           ),
           title: Text('Home'),
           onTap: () {
             Get.offAllNamed(Routes.Home_screen);
           },
         ),

         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Icon(
             Icons.group,
             color: Colors.black,
           ),
           title: Text('Pertner Prefreance'),
           onTap: () {
             Get.offAllNamed(Routes.PARTNER_PREFERENCE_SCREEN);

           },
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Icon(
             Icons.group,
             color: Colors.black,
           ),
           title: Text('Shortlisted Profile'),
           onTap: () {
             Get.offAllNamed(Routes.Shortlisted_Profile_screen);

           },
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Icon(
             Icons.group,
             color: Colors.black,
           ),
           title: Text('My chats'),
           onTap: () {},
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Icon(
             Icons.group,
             color: Colors.black,
           ),
           title: Text('My Matches'),
           onTap: () {},
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Icon(
             Icons.group,
             color: Colors.black,
           ),
           title: Text('Support Pages'),
           onTap: () {
             Get.offAllNamed(Routes.help_screen);
           },
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Icon(
             Icons.group,
             color: Colors.black,
           ),
           title: Text('Privecy Policy'),
           onTap: () {
             Get.offAllNamed(Routes.privacy_policy);

           },
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Icon(
             Icons.group,
             color: Colors.black,
           ),
           title: Text('Term And Condition'),
           onTap: () {
             Get.offAllNamed(Routes.Term_n_condition);
           },
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Icon(
             Icons.group,
             color: Colors.black,
           ),
           title: Text('FAQs'),
           onTap: () {},
         ),

         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Icon(
             Icons.group,
             color: Colors.black,
           ),
           title: Text('LogOut'),
           onTap: () {},
         ),
      ],
    ),
       ),
       appBar: AppBar(
         title: TextFieldShow(
           color: Colors.white,
           text: "Location",
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
      body: Column(children: <Widget>[



      ],)
    );
  }

}


