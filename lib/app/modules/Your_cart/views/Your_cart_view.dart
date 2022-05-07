
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indianmilan/app/utils/image_helper.dart';

import '../../../routes/app_pages.dart';

class Your_cart_view extends StatefulWidget {
  const Your_cart_view({Key? key}) : super(key: key);

  @override
  _Your_cart_view_State createState() => _Your_cart_view_State();
}

class _Your_cart_view_State extends State<Your_cart_view> {



  TextEditingController _serch = new TextEditingController();

  String dropdownvalue = 'Min.Age';

  var items = [
    'Min.Age',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your cart"),
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
          GestureDetector(
              onTap:() {
                Get.toNamed(Routes.Notofication_screen);
              },

              child:  Container(
                margin: EdgeInsets.only(right: 12),
                child: Icon(Icons.notifications_none_outlined,color: Colors.white,),
              )

          ),
        ],

        // leading:Container(
        //   child: Image.asset("images/backicon_indianmilan.png"),
        // ),




      ),
      body: ListView(

        children: [
          Container(
            height: MediaQuery.of(context).size.height/5,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(

                  radius: 30,
                  backgroundImage: AssetImage('Image_Shortlist_prifile/Group39226.png'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text("Johan Deo", style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/2.9,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),),

              margin: EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
              elevation: 15,
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),


                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 15, top: 5, right: 5, bottom: 3),
                            child: Row(
                              children: [
                                Text("Gold Plan", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                                Text("  Rs 2399", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),),

                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15, top: 3, right: 5, bottom: 3),
                            child: Text("Expires on 1 year", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 10),
                                height: 15,
                                width: 15,
                                child: Image.asset('Image_Shortlist_prifile/awesome_check.png'),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 3),
                                child: Text("Send Unlimated messages", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                height: 15,
                                width: 15,
                                child: Image.asset('Image_Shortlist_prifile/awesome_check.png'),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 3),
                                child: Text("View up to unlimited Contacts", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                height: 15,
                                width: 15,
                                child: Image.asset('Image_Shortlist_prifile/awesome_check.png'),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 3),
                                child: Text("Stand out from other profile ", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 15,
                                width: 15,
                                margin: EdgeInsets.only(left: 10),
                                child: Image.asset('Image_Shortlist_prifile/awesome_check.png'),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 3),
                                child: Text("let matches Contact you Directly", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),

                            child: Card(
                              color: Colors.white,
                              elevation: 0,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child:Image.asset(king),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Container(
                    //   margin: EdgeInsets.only(right: 5),
                    //   child: Icon(Icons.delete_outline_sharp,color: ColorValues.BUTTONBACKGROUND,),
                    // )

                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
            height: MediaQuery.of(context).size.height/15,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.blue, Colors.lightBlue]),
                borderRadius: BorderRadius.circular(30)
            ),
            alignment: Alignment.center,
            child:Text("Pay Now", style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 15)),
          )
        ],
      ),

    );
  }
}
