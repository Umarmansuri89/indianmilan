import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:indianmilan/app/modules/My_profile/controllers/profile_controller.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/image_helper.dart';


class profile_view_view extends GetView<profile_controller> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child:  Container(
            margin: EdgeInsets.only(left: 10),
            height: 60,
            width: 60,
            child: Image.asset(
              BACK_BUTTON,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // title: Text("Profile details"),
        centerTitle: true,
        backgroundColor: Colors.transparent,

        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         begin: Alignment.centerLeft,
        //         end: Alignment.centerRight,
        //         colors: <Color>[Colors.blue, Colors.pink]),
        //   ),
        // ),

        actions: [
          GestureDetector(
            onTap: (){
              PrimeUpgrade(context);
            },
            child: Container(
              margin: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.wifi_calling_outlined,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){

              PrimeUpgrade(context);
            },
            child: Container(
              margin: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.videocam_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12),
            child: Icon(
              Icons.chat_outlined,
              color: Colors.white,
            ),
          )
        ],

        // leading:Container(
        //   child: Image.asset("images/backicon_indianmilan.png"),
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8N3x8fGVufDB8fHx8&w=1000&q=80"),
                        fit: BoxFit.fill)),

                // AssetImage("Image_Shortlist_prifile/saree.png"),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "kjhgh",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 25),
              elevation: 15,
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 5),
                      child: Row(
                        children: [
                          Text("About ",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          Text("Shalini Verma",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.roboto(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 10,
                      ),
                      child: Text(
                          "Lorem ipsum dolor sit amet, consetetur sadipsuling elitr, sed diam nonumy eiromod tempor  Lorem ipsum dolor sit amet, consetetur sadipsuling elitr, sed diam nonumy eiromod tempor"
                              ""
                              "Lorem ipsum dolor sit amet, consetetur sadipsuling Lorem ipsum dolor sit amet, consetetur sadipsuling elitr, sed diam nonumy eiromod tempor",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              height: 1.4,
                              fontWeight: FontWeight.normal,
                              fontSize: 14)),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 25),
              elevation: 15,
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 5),
                      child: Text("Basic Details ",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: Colors.redAccent[100],
                                borderRadius: BorderRadius.circular(30)),
                            margin: EdgeInsets.only(
                              left: 5,
                              right: 10,
                              top: 5,
                              bottom: 10,
                            ),
                            child: Text("Created by self",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.roboto(
                                    color: Colors.red,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13)),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: Colors.redAccent[100],
                                borderRadius: BorderRadius.circular(30)),
                            margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 5,
                              bottom: 10,
                            ),
                            child: Text("24 year old",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.roboto(
                                    color: Colors.red,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13)),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 5, right: 5, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: Colors.redAccent[100],
                                borderRadius: BorderRadius.circular(30)),
                            margin: EdgeInsets.only(
                              left: 5,
                              top: 5,
                              bottom: 10,
                            ),
                            child: Text("Height 5'2'",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.roboto(
                                    color: Colors.red,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13)),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.orange[100]),
                                  child: Icon(
                                    Icons.perm_contact_calendar_outlined,
                                    size: 30,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Birth Date",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10)),
                                      Text("29/09/2022",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.orange[100]),
                                  child: Icon(
                                    Icons.receipt,
                                    size: 30,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Reilgion & language",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10)),
                                      Text("Hindu, Hindi",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.orange[100]),
                                  child: Icon(
                                    Icons.people_alt_sharp,
                                    size: 30,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Community",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10)),
                                      Text("Kashyap",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.orange[100]),
                                  child: Icon(
                                    Icons.location_on_sharp,
                                    size: 30,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Location",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10)),
                                      Text("Indore, Madhya Pradesh",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.orange[100]),
                                  child: Icon(
                                    Icons.perm_contact_calendar_outlined,
                                    size: 30,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Birth Date",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10)),
                                      Text("29/09/2022",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.orange[100]),
                                  child: Icon(
                                    Icons.restaurant_menu,
                                    size: 30,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Diet Preferences",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10)),
                                      Text("Veg",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 25),
              elevation: 15,
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Profile Verifaction ",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                                Image.asset(
                                  Verify,
                                  height: 25,
                                  width: 25,
                                ),
                                Text("Verified",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.roboto(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            approve,
                            height: 35,
                            width: 35,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("Mobile Number has been Verified",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 25),
              elevation: 15,
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Contact Details ",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Image.asset(
                                king,
                                height: 35,
                                width: 35,
                              ))
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.red[100]),
                          child: Icon(
                            Icons.call,
                            size: 25,
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.only(top: 5, bottom: 5, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Contact No.",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10)),
                              Text("+91 2255******",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14)),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.red[100]),
                          child: Icon(
                            Icons.email,
                            size: 25,
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.only(top: 5, bottom: 5, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Email ID",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10)),
                              Text("*********@gmail.com",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14)),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 100,
                          margin: EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: <Color>[
                                    Colors.blue,
                                    Colors.blueAccent,
                                    Colors.lightBlueAccent
                                  ]),
                              borderRadius: BorderRadius.circular(30)),
                          alignment: Alignment.center,
                          child: Text("View Detail",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 25),
              elevation: 15,
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 5),
                      child: Text("Family Details",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 10,
                      ),
                      child: Text(
                          "Lorem ipsum dolor sit amet, consetetur sadipsuling elitr, sed diam nonumy eiromod tempor  Lorem ipsum dolor sit amet, consetetur sadipsuling elitr, sed diam nonumy eiromod tempor",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              height: 1.4,
                              fontWeight: FontWeight.normal,
                              fontSize: 14)),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 25),
              elevation: 15,
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 5),
                      child: Text("Career & Education",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.greenAccent),
                                  child: Image.asset(
                                      "Image_Shortlist_prifile/Group 55729.png"),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Profession",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10)),
                                      Text("IT/Software Field",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.greenAccent),
                                  child: Image.asset(
                                      "Image_Shortlist_prifile/Group 55730.png"),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Work As",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10)),
                                      Text("Web Delveloper",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.greenAccent),
                                  child: Image.asset(
                                      "Image_Shortlist_prifile/Group 55731.png"),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Company Name",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10)),
                                      Text("Tech mahindra",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.greenAccent),
                                  child: Image.asset(
                                      "Image_Shortlist_prifile/Group 55732.png"),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Annual income",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10)),
                                      Text("Earn 1 Lakh to 2 lakh Anuual",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(left: 00, right: 00, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: Text("Profile matching your interst",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: Text("View All",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                  )
                ],
              ),
            ),
            Container(
              height: 210,
              margin: EdgeInsets.only(left: 10, top: 5, bottom: 50),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      width: 150,
                      child: Image.asset(
                        girls1,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text('Neha Rathore',
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 1),
                            child: Text("25yrs | 5'5'| MP/ Indore",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
          margin: EdgeInsets.only(top: 10),
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.blue, Colors.lightBlueAccent, Colors.pink]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text("Like her ?",  textAlign: TextAlign.justify,
                    style: GoogleFonts.roboto(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30)

                ),
                child:Row(
                  children: [
                    Text("Skip  ",  textAlign: TextAlign.justify,
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    Icon(Icons.clear, color: Colors.white,size: 20,),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Container(
                            height: 270,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Container(
                                  margin: EdgeInsets.only(left: 15,top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: CircleAvatar(
                                                radius: 35,
                                                backgroundColor: Colors.grey,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      child: Text("Shalini Verma",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)
                                                  ),

                                                  Container(
                                                    margin: EdgeInsets.only(top: 2),
                                                    child: Text("Indore,Madhya Pradesh",style: TextStyle(color: Colors.grey),),
                                                  ),

                                                ],

                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(right: 20,top: 10),
                                        alignment: Alignment.topRight,
                                        child: Icon(Icons.clear),
                                      ),

                                    ],

                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  width: 370,
                                  child: Text("This member hs chosen to receive Messages only from members she has Accepted their request",
                                    style: TextStyle(fontSize: 16),),
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  width: 370,
                                  child: Text("initiate a conversation with her to get to know her response",
                                    style: TextStyle(fontSize: 16,color: Colors.red),),
                                ),

                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.blue,
                                    ),
                                    alignment: Alignment.center,
                                    height: 45,
                                    width: 130,
                                    child: Text("Connect Now",style: TextStyle(color: Colors.white,fontSize: 16),),
                                  ),
                                )

                              ],
                            ),
                          ),
                        );
                      }
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      Text("Correct  ",  textAlign: TextAlign.justify,
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                      Icon(Icons.check, color: Colors.black,size: 20,),

                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }


  PrimeUpgrade(context){
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: MediaQuery.of(context).size.height/1.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    margin: EdgeInsets.only(left: 15,top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.grey,
                                ),
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width/1.6,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text("Upgrade to premium membership now to video call shalini verma",
                                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                                  )
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(right: 20,top: 10),
                          alignment: Alignment.topRight,
                          child: Icon(Icons.clear),
                        ),
                      ],
                    ),),

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: 280,
                        width: 350,

                        child: Column(
                          children: [

                            Container(
                              margin: EdgeInsets.only(top: 10,left: 10),
                              alignment: Alignment.topLeft,
                              child: Text("Premium membership lets you",style: TextStyle(fontWeight: FontWeight.w700),),
                            ),

                            Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          margin: EdgeInsets.only(top: 10,left: 10),
                                          child: Icon(Icons.call,color: Colors.green,),
                                        ),

                                        Container(
                                            margin: EdgeInsets.only(top: 10,left: 20),
                                            child:Text("Call her",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                        ),

                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(top: 10,right: 10),
                                    child: Icon(Icons.lock,color: Colors.grey,),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),

                            Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          margin: EdgeInsets.only(top: 10,left: 10),
                                          child: Icon(Icons.video_call,color: Colors.green,),
                                        ),

                                        Container(
                                            margin: EdgeInsets.only(top: 10,left: 20),
                                            child:Text("Make video calls",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                        ),

                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(top: 10,right: 10),
                                    child: Icon(Icons.lock,color: Colors.grey,),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),

                            Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          margin: EdgeInsets.only(top: 10,left: 10),
                                          child: Icon(Icons.message,color: Colors.green,),
                                        ),

                                        Container(
                                            margin: EdgeInsets.only(top: 10,left: 20),
                                            child:Text("Send personalised message",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                        ),

                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(top: 10,right: 10),
                                    child: Icon(Icons.lock,color: Colors.grey,),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),

                            Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          margin: EdgeInsets.only(top: 10,left: 10),
                                          child: Icon(Icons.details,color: Colors.green,),
                                        ),

                                        Container(
                                            margin: EdgeInsets.only(top: 10,left: 20),
                                            child:Text("View all contact details",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                        ),

                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(top: 10,right: 10),
                                    child: Icon(Icons.lock,color: Colors.grey,),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),

                            Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          margin: EdgeInsets.only(top: 10,left: 10),
                                          child: Icon(Icons.details,color: Colors.green,),
                                        ),

                                        Container(
                                            margin: EdgeInsets.only(top: 10,left: 20),
                                            child:Text("View all Hidden details",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                        ),

                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(top: 10,right: 10),
                                    child: Icon(Icons.lock,color: Colors.grey,),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),



                  Container(
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue,
                    ),
                    alignment: Alignment.center,
                    height: 45,
                    width: 130,
                    child: Text("Upgrade Now",style: TextStyle(color: Colors.white,fontSize: 16),),
                  )

                ],
              ),
            ),
          );
        }
    );
  }
}
