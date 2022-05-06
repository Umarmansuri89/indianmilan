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
    return Scaffold (

      appBar:AppBar(
        title: Text("My Profile"),
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

        leading:
        Container(
          child: Image.asset(BACK_BUTTON),
        ),

      ),

      body: ListView(
        children: [

          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [

                Container(
                  height: MediaQuery.of(context).size.height/5,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("images/profileimage.png"),
                      ),
                      // CircleAvatar(
                      //   foregroundColor: Colors.white,
                      //
                      //    radius: 35,
                      //   backgroundImage: AssetImage('images/profileimage.png'),
                      // ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text("Johan Deo", style:TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                      )
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 22,top: 15,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Basic Info",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w600),),
                      ),

                      Container(
                          child:Icon(Icons.edit)
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20,top: 10),
                      width: 370,

                      child: Column(
                        children: [

                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Posted by :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("self :",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Age :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("26 years :",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Marital Status :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Never :",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Height :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("5'4'",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Any Disablity :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("No",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 22,top: 15,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("About Myself",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w600),),
                      ),

                      Container(
                          child:Icon(Icons.edit)
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 370,

                      child: Column(
                        children: [
                          Container(
                            child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                'ext ever since the 1500s, when an unknown printer took a galley of type and'
                                'ext ever since the 1500s, when an unknown printer took a galley of type and'
                                'ext ever since the 1500s, when an unknown printer took a galley of type and',textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 15),
                            ),

                          )
                        ],
                      ),

                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.only(left: 22,top: 15,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Religious background",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w600),),
                      ),

                      Container(
                          child:Icon(Icons.edit)
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20,top: 10),
                      width: 370,

                      child: Column(
                        children: [

                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Religion :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Hindu :",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Language preferred :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Hindi",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Community :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("KAshyap",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Sub community :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("No",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("No Caste Bar :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Yes",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Gothra :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Don't know",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 22,top: 15,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Family background",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w600),),
                      ),

                      Container(
                          child:Icon(Icons.edit)
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20,top: 10),
                      width: 370,

                      child: Column(
                        children: [

                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Family status :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Nuclear",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Family type :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Middle class",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("FAmily values :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Orthodox",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Ancestral origin :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("DElhi",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Father's status :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Retired",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Mother's status :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("House wife",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("No. of brothers :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("1 of which married",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("No. of sisters :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("0",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.only(left: 22,top: 15,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Location, Education & Career",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w600),),
                      ),

                      Container(
                          child:Icon(Icons.edit)
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20,top: 10),
                      width: 370,

                      child: Column(
                        children: [

                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("State living :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Madhya Pradesh",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("City leaving :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Indore",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Qualification :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("MBA",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Occupation :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Occupation",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Working as :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Manager",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Annual income :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("INR 2 lakh to 4 lakh ",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),


                        ],
                      ),

                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.only(left: 22,top: 15,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Life style",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w600),),
                      ),

                      Container(
                          child:Icon(Icons.edit)
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20,top: 10),
                      width: 370,

                      child: Column(
                        children: [

                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Diet :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Veg",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Smoking :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Never",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Drinking :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(top: 10,left: 20),
                                    child: Text("Never",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  ),
                                ),


                              ],
                            ),
                          ),

                        ],
                      ),

                    ),
                  ),
                ),









              ],

            ),
          ),

        ],

      ),

    );
  }
}
