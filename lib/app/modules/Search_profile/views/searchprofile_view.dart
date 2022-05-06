
import 'package:flutter/material.dart';

class searchprofile extends StatefulWidget {
  const searchprofile({Key? key}) : super(key: key);

  @override
  _searchprofileState createState() => _searchprofileState();
}

class _searchprofileState extends State<searchprofile> {



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
      appBar:AppBar(
        title: Text("Search Profile"),
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

        leading:Container(
          child: Image.asset("images/backicon_indianmilan.png"),
        ),

      ),

      body: ListView(
        children: [

          Container(
            margin: EdgeInsets.only(
                left: 30, top: 20, bottom: 10, right: 30),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
                color: Colors.white
            ),

            child: TextField(
              onSubmitted: (String value) async {
                setState(() {

                });

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => All_products()),
                // );

              },
              controller: _serch,
              autofocus: false,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Search by keyword',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
              ),
            ),
          ),


          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 40,
                // width: 105,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: 20,left: 10),



                child:DropdownButton(

                  // isExpanded: true,
                  // underline: Container(),
                  isDense: true,
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon:  Container(
                      margin: EdgeInsets.only(left: 50,bottom: 5),
                      child: Icon(Icons.keyboard_arrow_down)),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Container(
                          margin: EdgeInsets.only(left: 5,bottom: 5),
                          child: Text(items)),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: 40,
                // width: 105,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: 20,left: 40),



                child:DropdownButton(

                  // isExpanded: true,
                  // underline: Container(),
                  isDense: true,
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon:  Container(
                      margin: EdgeInsets.only(left: 50,bottom: 5),
                      child: Icon(Icons.keyboard_arrow_down)),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Container(
                          margin: EdgeInsets.only(left: 5,bottom: 5),
                          child: Text(items)),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ],

          ),

          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 40,
                // width: 105,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: 30,left: 10),



                child:DropdownButton(

                  // isExpanded: true,
                  // underline: Container(),
                  isDense: true,
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon:  Container(
                      margin: EdgeInsets.only(left: 50,bottom: 5),
                      child: Icon(Icons.keyboard_arrow_down)),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Container(
                          margin: EdgeInsets.only(left: 5,bottom: 5),
                          child: Text(items)),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: 40,
                // width: 105,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: 30,left: 40),



                child:DropdownButton(

                  // isExpanded: true,
                  // underline: Container(),
                  isDense: true,
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon:  Container(
                      margin: EdgeInsets.only(left: 50,bottom: 5),
                      child: Icon(Icons.keyboard_arrow_down)),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Container(
                          margin: EdgeInsets.only(left: 5,bottom: 5),
                          child: Text(items)),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ],

          ),

          Container(
            alignment: Alignment.topLeft,
            height: 40,
            // width: 105,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 20,left: 10,right: 34),



            child:DropdownButton(

              isExpanded: true,
              // underline: Container(),
              isDense: true,
              value: dropdownvalue,

              // Down Arrow Icon
              icon:  Container(
                  margin: EdgeInsets.only(left: 50,bottom: 5),
                  child: Icon(Icons.keyboard_arrow_down)),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                      margin: EdgeInsets.only(left: 5,bottom: 5),
                      child: Text(items)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            height: 40,
            // width: 105,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 20,left: 10,right: 34),



            child:DropdownButton(

              isExpanded: true,
              // underline: Container(),
              isDense: true,
              value: dropdownvalue,

              // Down Arrow Icon
              icon:  Container(
                  margin: EdgeInsets.only(left: 50,bottom: 5),
                  child: Icon(Icons.keyboard_arrow_down)),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                      margin: EdgeInsets.only(left: 5,bottom: 5),
                      child: Text(items)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            height: 40,
            // width: 105,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 20,left: 10,right: 34),



            child:DropdownButton(

              isExpanded: true,
              // underline: Container(),
              isDense: true,
              value: dropdownvalue,

              // Down Arrow Icon
              icon:  Container(
                  margin: EdgeInsets.only(left: 50,bottom: 5),
                  child: Icon(Icons.keyboard_arrow_down)),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                      margin: EdgeInsets.only(left: 5,bottom: 5),
                      child: Text(items)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            height: 40,
            // width: 105,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 20,left: 10,right: 34),



            child:DropdownButton(

              isExpanded: true,
              // underline: Container(),
              isDense: true,
              value: dropdownvalue,

              // Down Arrow Icon
              icon:  Container(
                  margin: EdgeInsets.only(left: 50,bottom: 5),
                  child: Icon(Icons.keyboard_arrow_down)),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                      margin: EdgeInsets.only(left: 5,bottom: 5),
                      child: Text(items)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            height: 40,
            // width: 105,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 20,left: 10,right: 34),



            child:DropdownButton(

              isExpanded: true,
              // underline: Container(),
              isDense: true,
              value: dropdownvalue,

              // Down Arrow Icon
              icon:  Container(
                  margin: EdgeInsets.only(left: 50,bottom: 5),
                  child: Icon(Icons.keyboard_arrow_down)),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                      margin: EdgeInsets.only(left: 5,bottom: 5),
                      child: Text(items)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),

          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 40,
                // width: 105,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: 30,left: 10),



                child:DropdownButton(

                  // isExpanded: true,
                  // underline: Container(),
                  isDense: true,
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon:  Container(
                      margin: EdgeInsets.only(left: 50,bottom: 5),
                      child: Icon(Icons.keyboard_arrow_down)),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Container(
                          margin: EdgeInsets.only(left: 5,bottom: 5),
                          child: Text(items)),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: 40,
                // width: 105,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: 30,left: 40),



                child:DropdownButton(

                  // isExpanded: true,
                  // underline: Container(),
                  isDense: true,
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon:  Container(
                      margin: EdgeInsets.only(left: 50,bottom: 5),
                      child: Icon(Icons.keyboard_arrow_down)),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Container(
                          margin: EdgeInsets.only(left: 5,bottom: 5),
                          child: Text(items)),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ],

          ),

          Container(
            alignment: Alignment.topLeft,
            height: 40,
            // width: 105,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 20,left: 10,right: 34),



            child:DropdownButton(

              isExpanded: true,
              // underline: Container(),
              isDense: true,
              value: dropdownvalue,

              // Down Arrow Icon
              icon:  Container(
                  margin: EdgeInsets.only(left: 50,bottom: 5),
                  child: Icon(Icons.keyboard_arrow_down)),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                      margin: EdgeInsets.only(left: 5,bottom: 5),
                      child: Text(items)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            height: 40,
            // width: 105,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 20,left: 10,right: 34),



            child:DropdownButton(

              isExpanded: true,
              // underline: Container(),
              isDense: true,
              value: dropdownvalue,

              // Down Arrow Icon
              icon:  Container(
                  margin: EdgeInsets.only(left: 50,bottom: 5),
                  child: Icon(Icons.keyboard_arrow_down)),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                      margin: EdgeInsets.only(left: 5,bottom: 5),
                      child: Text(items)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            height: 40,
            // width: 105,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 20,left: 10,right: 34),



            child:DropdownButton(

              isExpanded: true,
              // underline: Container(),
              isDense: true,
              value: dropdownvalue,

              // Down Arrow Icon
              icon:  Container(
                  margin: EdgeInsets.only(left: 50,bottom: 5),
                  child: Icon(Icons.keyboard_arrow_down)),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                      margin: EdgeInsets.only(left: 5,bottom: 5),
                      child: Text(items)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            height: 40,
            // width: 105,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 20,left: 10,right: 34),



            child:DropdownButton(

              isExpanded: true,
              // underline: Container(),
              isDense: true,
              value: dropdownvalue,

              // Down Arrow Icon
              icon:  Container(
                  margin: EdgeInsets.only(left: 50,bottom: 5),
                  child: Icon(Icons.keyboard_arrow_down)),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                      margin: EdgeInsets.only(left: 5,bottom: 5),
                      child: Text(items)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            height: 40,
            // width: 105,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 20,left: 10,right: 34),



            child:DropdownButton(

              isExpanded: true,
              // underline: Container(),
              isDense: true,
              value: dropdownvalue,

              // Down Arrow Icon
              icon:  Container(
                  margin: EdgeInsets.only(left: 50,bottom: 5),
                  child: Icon(Icons.keyboard_arrow_down)),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                      margin: EdgeInsets.only(left: 5,bottom: 5),
                      child: Text(items)),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 25,bottom: 10,left: 30,right: 30),
            alignment: Alignment.center,
            height: 45,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue
            ),

            child: Text("Search",style: TextStyle(color: Colors.white,fontSize: 17),),
          )



        ],
      ),

    );
  }
}
