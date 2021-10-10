import 'dart:convert';
import 'package:bmstaffhelp/creditcardoffers/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';



class SelectionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _selectionScreen();
  }
          }

  class _selectionScreen extends State<SelectionScreen> {
  List fullData = new List();
  List searchData = new List();
  TextEditingController textEditingController = new TextEditingController();

  @override
  initState() {
  super.initState();
  getLocalJsonData();
  setState(() {});
  }

  getLocalJson() {
  return rootBundle.loadString('assets/data.json');   // Read your local Data
  }

  Future getLocalJsonData() async {
  final responce = json.decode(await getLocalJson());
  List tempList = new List();
  for (var i in responce['Sheet1']) {
  tempList.add(i);   // Create a list and add data one by one
  }
  fullData = tempList;
  }

  onSearchTextChanged(String text) async {
  searchData.clear();
  if (text.isEmpty) {    // Check textfield is empty or not
  setState(() {});
  return;
  }

  fullData.forEach((data) {
  if (data['COMP_NAME']
      .toString()
      .toLowerCase()
      .contains(text.toLowerCase().toString())) {
  searchData.add(data);   // If not empty then add search data into search data list
  }
  });

  setState(() {});
  }

  @override
  Widget build(BuildContext context) {
  // TODO: implement build
  return Scaffold(
  backgroundColor: Colors.white,

      body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40,left: 10),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: LightColors.kRed,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 5,),
                    Container(child: Text("أكواد الجهات",style: GoogleFonts.cairo(color: LightColors.kRed,fontSize: 25,fontWeight: FontWeight.bold),),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(

                      suffixIcon: Icon(
                        FontAwesomeIcons.building,color: LightColors.kRed,
                      ),
                      hoverColor: Colors.red,
                      hintText: "ابحث هنا عن الجهه",
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.transparent),
                          borderRadius:
                          BorderRadius.all(Radius.circular(0))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.transparent),
                          borderRadius:
                          BorderRadius.all(Radius.circular(15))),

                      filled: true,
                      fillColor: Colors.grey[200]
                  ),
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold,
                      color: LightColors.kDarkBlue,
                      decoration: TextDecoration.none),
                  controller: textEditingController,
                  onChanged: onSearchTextChanged,
                ),
              ),
              Expanded(
                child: searchData.length == 0   // Check SearchData list is empty or not if empty then show full data else show search data
                    ? ListView.builder(
                  itemCount: fullData.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: LightColors.kRed,
                                spreadRadius: 2,
                                offset: Offset(0, 0))
                          ]
                         ),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(2) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(fullData[index]['COMP_ID'],style: GoogleFonts.cairo(color: LightColors.kDarkBlue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),

                          Container(
                            height: 2,
                          ),
                          Text(fullData[index]['COMP_NAME'],style: GoogleFonts.cairo(color: LightColors.kRed,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                          Container(
                            height: 2,
                          ),
                          Text(fullData[index]['DECISION'],style: GoogleFonts.cairo(color: LightColors.kBlue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ],
                      ),
                    );
                  },
                )
                    : ListView.builder(
                  itemCount: searchData.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: LightColors.kRed,
                                spreadRadius: 2,
                                offset: Offset(0, 0))
                          ]),
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(searchData[index]['COMP_ID'],style: GoogleFonts.cairo(color: LightColors.kDarkBlue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl),

                          Container(
                            height: 2,
                          ),
                          Text(searchData[index]['COMP_NAME'],style: GoogleFonts.cairo(color: LightColors.kRed,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                          Container(
                            height: 2,
                          ),
                          Text(searchData[index]['DECISION'],style: GoogleFonts.cairo(color: LightColors.kBlue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}