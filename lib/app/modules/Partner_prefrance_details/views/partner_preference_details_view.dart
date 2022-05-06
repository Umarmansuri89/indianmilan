
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';

class partner_preference_details_View extends StatefulWidget {
  const partner_preference_details_View({Key? key}) : super(key: key);

  @override
  _partnerpreferenceState createState() => _partnerpreferenceState();
}

class _partnerpreferenceState extends State<partner_preference_details_View> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (

      appBar:AppBar(
        title: Text("Partner Preferences"),
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
            GestureDetector(
              onTap: (){
                Get.offAllNamed(Routes.Deshboard_view_screen);
              },
              child: Container(
                child: Image.asset(BACK_BUTTON),
              ),
            ),


      ),

      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 22,top: 15,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Partner Basic Info",
                        style: TextStyle(color: Colors.red,fontSize:
                        16,fontWeight: FontWeight.w600),),

                    ),

                    Container(
                      margin: EdgeInsets.only(left: 00),
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        edit_profile,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10,),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20,top: 10),
                    // height: 400,
                    width: 350,

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
                                  child: Text("Age :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("26 years",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("5'4'",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  child: Text("Diet :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("Veg",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("Never",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  child: Text("Religion/Community :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("Agrawal",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  child: Text("Mother tounge :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("Hindi",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  child: Text("Manglik :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("No",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  child: Text("Gotra :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("Don't Know",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("Never",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  child: Text("Driking :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("Never",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Partner Location",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 00),
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        edit_profile,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10,),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20,top: 10),
                    // height: 400,
                    width: 350,

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
                                  child: Text("State :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("Madhya Pradesh",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  child: Text("City :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("Indore",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 22,top: 15,right: 20,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Partner Education & Career",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 00),
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        edit_profile,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20,top: 10),
                    // height: 400,
                    width: 350,

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
                                  child: Text("Qualification :",style: TextStyle(fontSize: 16,color: Colors.grey),),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("Never",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("Engineer",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  alignment: Alignment.topLeft,
                                  child: Text("No",style: TextStyle(fontWeight: FontWeight.w600),),
                                ),
                              )
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
        ],

      ),

    );
  }
}
