import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

import 'package:flutter/services.dart';

//widgets
class worldee extends StatefulWidget {
  @override
  _worldeeState createState() => _worldeeState();
}

class _worldeeState extends State<worldee> {


  String _named = "";
  String _phonne = "";
  String _limit = "";
  String _staffname = "";
  String _emiResult = "";

  final TextEditingController _name = TextEditingController();
  final TextEditingController _cardlimit = TextEditingController();
  final TextEditingController _STAFFNAME = TextEditingController();
  final TextEditingController _STAFFPHONE = TextEditingController();
  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 800;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        extendBodyBehindAppBar: true,
        backgroundColor: ArgonColors.bgColorScreen,
        body: Stack(children: <Widget>[

          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/pp.png"),
                      fit: BoxFit.fitWidth))),
          SafeArea(
            child: ListView(children: [
              SizedBox(width: 120,height: 20,),

              Row(
                children: [
                  SizedBox(width: 40,height: 20,),

                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                ],
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Card(
                          color: Colors.white,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: .0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5.0))),
                          child: Padding(
                            padding:
                            const EdgeInsets.only(top: 0.5, bottom: 20.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: ArgonColors.info,
                                              borderRadius:
                                              BorderRadius.circular(3.0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.3),
                                                  spreadRadius: 1,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                          ),

                                          Container(
                                            decoration: BoxDecoration(
                                              color: ArgonColors.initial,
                                              borderRadius:
                                              BorderRadius.circular(3.0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.3),
                                                  spreadRadius: 1,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Text(
                                              "MasterCard World Elite",
                                              style: TextStyle(
                                                  color: ArgonColors.white,
                                                  fontSize: 25.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 8.0),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: ArgonColors.info,
                                              borderRadius:
                                              BorderRadius.circular(3.0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.3),
                                                  spreadRadius: 1,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                          ),

                                          Container(
                                            decoration: BoxDecoration(
                                              color: ArgonColors.warning,
                                              borderRadius:
                                              BorderRadius.circular(3.0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.3),
                                                  spreadRadius: 1,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Text(
                                              "From 300000 to 799999",
                                              style: TextStyle(
                                                  color: ArgonColors.white,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 8.0),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10.0),
                                      Container(
                                        height: 60,
                                        width: 300,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: new TextFormField(
                                            style: TextStyle(
                                                color: ArgonColors.initial,
                                                fontWeight: FontWeight.bold),
                                            keyboardType: TextInputType.text,
                                            controller: _name,
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                              hoverColor: Colors.red,
                                              hintText: "Enter Customer Name ",
                                              hintStyle:
                                              TextStyle(color: Colors.grey),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                      ArgonColors.initial),
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(0))),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(15))),
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5.0),
                                      Container(
                                        height: 60,
                                        width: 300,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: new TextFormField(
                                            style: TextStyle(
                                                color: ArgonColors.initial,
                                                fontWeight: FontWeight.bold),
                                            keyboardType: TextInputType.text,
                                            controller: _cardlimit,
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                              hoverColor: Colors.red,
                                              hintText: "Enter Card Limit ",
                                              hintStyle:
                                              TextStyle(color: Colors.grey),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                      ArgonColors.initial),
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(0))),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(15))),
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                height: 60,
                                                width: 170,
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(7.0),
                                                  child: new TextFormField(
                                                    style: TextStyle(
                                                        color:
                                                        ArgonColors.initial,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                    keyboardType:
                                                    TextInputType.text,
                                                    controller: _STAFFNAME,
                                                    textAlign: TextAlign.center,
                                                    decoration: InputDecoration(
                                                      hoverColor: Colors.red,
                                                      hintText:
                                                      "Enter Your Name",
                                                      hintStyle: TextStyle(
                                                          color: Colors.grey),
                                                      enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: ArgonColors
                                                                  .initial),
                                                          borderRadius:
                                                          BorderRadius.all(
                                                              Radius
                                                                  .circular(
                                                                  0))),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                              color: Colors
                                                                  .grey),
                                                          borderRadius:
                                                          BorderRadius.all(
                                                              Radius
                                                                  .circular(
                                                                  15))),
                                                      filled: true,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: 60,
                                            width: 150,
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.all(7.0),
                                              child: new TextFormField(
                                                style: TextStyle(
                                                    color: ArgonColors.initial,
                                                    fontWeight:
                                                    FontWeight.bold),
                                                keyboardType:
                                                TextInputType.text,
                                                controller: _STAFFPHONE,
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                  hoverColor: Colors.red,
                                                  hintText: "Your phone",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey),
                                                  enabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: ArgonColors
                                                              .initial),
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius
                                                              .circular(
                                                              0))),
                                                  focusedBorder:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                      BorderSide(
                                                          color: Colors
                                                              .grey),
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius
                                                              .circular(
                                                              15))),
                                                  filled: true,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 34.0, right: 34.0, top: 16),
                                          child: FlatButton(
                                            child: Text("Show Customer Offer"),
                                            textColor: ArgonColors.white,
                                            color: ArgonColors.warning,
                                            onPressed: _topamount4,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(4.0),
                                            ),
                                          ),
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

                    ]),
                  ],
                ),
              ),

              emiResultsWidget(_phonne),






            ]),
          )

        ]));
  }

  void _topamount4() {
    String name = _name.text;
    double phone = double.parse(_STAFFPHONE.text);
    double limit = double.parse(_cardlimit.text);
    String name2 = _STAFFNAME.text;

    _limit = limit.toStringAsFixed(0);
    _emiResult = phone.toStringAsFixed(2);
    _named = name;
    _phonne = phone.toStringAsFixed(0);
    _staffname =name2;
    setState(() {});
  }

  Widget emiResultsWidget(emiResult) {
    bool canShow = false;
    String _phonne = emiResult;

    if (_phonne.length > 0) {
      canShow = true;
    }
    return Column(
      children: [
        RepaintBoundary(
          key: previewContainer,

          child: Card(
            color: Colors.white,
            child: canShow ?Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    child: Text(
                      _named,
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.black,
                    color: ArgonColors.secondary,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    child: Text(
                      "?????????? ???????????? ",
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.white,
                    color: ArgonColors.warning,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    child: Text(
                      "MasterCard World Elite",
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.black,
                    color: ArgonColors.secondary,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    child: Text(
                      "?????????? ?????????????????? ",
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.white,
                    color: ArgonColors.warning,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    child: Text(
                      _limit,
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.black,
                    color: ArgonColors.secondary,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    child: Text(
                      " ?????????? ???????????????????? ",
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.white,
                    color: ArgonColors.warning,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ],
              ),
              Divider(
                color: ArgonColors.warning,
              ),
              RaisedButton(
                child: Text(
                  " **** ?????????????????? ???????????????????? ???????????? ****",
                  style: GoogleFonts.tajawal(),
                  textAlign: TextAlign.center,
                ),
                textColor: ArgonColors.white,
                color: ArgonColors.warning,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "?????????????? ?????????????? ?????????????? ???? ???????????? ???????????? ???????????? ???????????? ?????????? ?????????????? ?????????????? ?????????????? ????????????.",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "???????? ???????? ???????? ?????????????????? ?????? ?????? 57 ??????.",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "?????? ???????? ???????? 5 % ???? ???????????? ??????????????????",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "?????????????? ?????????????? 100 % ???? ???????? ?????????????????? ?????????????? ???? ?????????? ????????????.",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "?????????????? ?????????????? ?????????????? ?????? ???????? ???????????????? ?????????? ???????????? ??????????????.",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "?????????????? ??????????/?????????? ?????????? ?????????? ???? ???????? ?????????????? ??????????????",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "?????????? ???????????? ?????????????????? ???????? ???????????? ???????? ???????????? ???????????? (6?? 12?? 24?? 36 ??????) ???????????? 1.7 % ????????????.",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "?????? ?????????????? ???? ???????? ???????????? ???????????????????? ???? ?????????? ?????? 6 ???????? ???? 12 ?????? ???????? ??????????.",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "?????????? ???????????? ?????????? ???????????? ???????? ???????????? ???????? ???????????? ???????????? (6?? 12?? 24?? 36 ??????) ???????????? 2.17 % ????????????",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "?????? ???????????? ?????????? ?????????????????? ?????????????? ( ???? ???????? ???????? ?????????? - ???????? ATM ?????????????? ???????????????? ???????????? ?????????? ?????????????????? - ???? ???????? ???????????????? ???????????? )  ",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "???????????? ???????????? ?????? ??????(?????? ?????? ???????? ?????????????? ???????? ???????????? ???? ???? ?????????? ?????????????? ?????? ?????? ??????????????)",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              RaisedButton(
                child: Text(
                  " **** ?????????????????? ???????????????????? ???????????? ****",
                  style: GoogleFonts.tajawal(),
                  textAlign: TextAlign.center,
                ),
                textColor: ArgonColors.white,
                color: ArgonColors.warning,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.crop_square,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "???????????? ?????? ???????? ???? ???????????? ???????????????????? ???? ???????? ?????????????? Master Card for you ?????????? ?????????????? Master Card Buy 1 Get 1 ???????? ?????? ???????????? ???? ?????? ???????????????????? ????????????????",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.crop_square,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "???????? ?????????? ?????? ?????????? ?????????? ???? 900 ???????? ?????????? ???? ???? ???????? ?????????? ?????????????? ???????????? ???? ?????????????????? ???? ?????????? ???????? ???????????? ???????????? ???????????????? ???????? ?????????? www.loungekey.com/mcworld.",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.crop_square,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "???????? ?????????????? ?????????????? ???????? ?????? ?????? ?????????? ?????? ???????? 24 ???????? ?????????? ???????????? ???????????? ???? ?????????????? ???????????? ?????????????? (Cardholder enquiries) ???????????????? ?????? ???? ?????????? ???????? ?????????????? ?????????? ???????? ?????? 19888 ???? ??????????.",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.crop_square,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "???????? ?????????????? ???????? ?????????????? ?????? ?????????? ?????? (???????? ?????????????? ??? ???????? ???????? ?????????????? ??? ?????????? ???????????? ??? ?????????????? ?????????? ?????????? ?????????? ... ??????).",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.crop_square,
                    size: 19,
                    color: ArgonColors.warning,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "???????? ?????????????? ?????????????? ???????? ?????? ???????????? ?????? ?????????????? ?????? ???????? ???????????????? ?????????? ???????? ???????????????? ???????????????? ?????????????? ?????????????? ???????????????? ?????? ?????????? ????????????https://www.mastercard.com.eg/ar-eg/consumers/find-card-products/world.html.",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.tajawal(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              RaisedButton(
                child: Text(
                  " **** ???????????? ???????????????? ?????? ?????? ****",
                  style: GoogleFonts.tajawal(),
                  textAlign: TextAlign.center,
                ),
                textColor: ArgonColors.white,
                color: ArgonColors.warning,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 120.0,
                    child: RaisedButton(
                      child: Text(
                        " ???????? ????????   =( 3.5 ???????? )",
                        style: GoogleFonts.tajawal(),
                        textAlign: TextAlign.center,
                      ),
                      textColor: ArgonColors.black,
                      color: ArgonColors.secondary,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    child: Text(
                      "???????????? ???????????? ???????? ?????? ",
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.white,
                    color: ArgonColors.warning,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 120.0,
                    child: RaisedButton(
                      child: Text(
                        " ???????? ????????   =( 4 ???????? )",
                        style: GoogleFonts.tajawal(),
                        textAlign: TextAlign.center,
                      ),
                      textColor: ArgonColors.black,
                      color: ArgonColors.secondary,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    child: Text(
                      "???????????? ???????????? ???????? ?????? ",
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.white,
                    color: ArgonColors.warning,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),

                ],
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                child: Table(

                  border: TableBorder.all(color: ArgonColors.white,width: 2),
                  children: [
                    TableRow(children: [
                      Center(child: Text(' 2000 ????  ',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black),)),
                      Container(
                          color: ArgonColors.warning,
                          child: Center(child: Text('???????????? ?????????? ????????????',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),))),

                    ]),
                    TableRow(children: [
                      Center(child: Text(' 2000 ????  ',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black),)),
                      Container(
                          color: ArgonColors.warning,
                          child: Center(child: Text('???????????? ?????????? ????????????',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),))),                    ]),
                    TableRow(children: [
                      Center(child: Text(' ???????? ???? ???????? ',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black),)),
                      Container(
                          color: ArgonColors.warning,
                          child: Center(child: Text('???????????????? ???????????????? ????????????????',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),))),                    ]),
                    TableRow(children: [
                      Center(child: Text(' 20000 ???? ??????????  ',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black),)),
                      Container(
                          color: ArgonColors.warning,
                          child: Center(child: Text('???? ?????????? ????????????',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),))),                    ]),
                    TableRow(children: [
                      Center(child: Text(' ???? ???????? ???????? ?????????????????? ??????????????   ',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black),)),
                      Container(
                          color: ArgonColors.warning,
                          child: Center(child: Text('???? ???????????? ???? ???????? ?????????? ??????',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),))),                    ]),
                  ],
                ),
              ),
              SizedBox(height: 4.0),
              RaisedButton(
                child: Text(
                  " **** ?????????????????? ?????????????? ?????????????? ****",
                  style: GoogleFonts.tajawal(),
                  textAlign: TextAlign.center,
                ),
                textColor: ArgonColors.white,
                color: ArgonColors.warning,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              Text(
                "Android ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){


                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/club2.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "BM Rewards",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){


                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/4u.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "Mcard 4You",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/key.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "LoungeKey",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){


                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/pricless.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "Priceless Egypt",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){


                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/bmonline.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "BM online",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/wemazya.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "?????????? ????????????",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text(
                "IOS ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){


                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/club.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "BM Rewards ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){


                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/ios4.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "Mastercard 4u",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/apple2.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "LoungeKey",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){


                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/ios5.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "Priceless Egypt",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){


                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/iosonline.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "BM online",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(

                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.30,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      decoration: BoxDecoration(
                        color:Colors.white,

                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(29),

                            decoration: BoxDecoration(

                              image: DecorationImage(

                                image: AssetImage('assets/wemazya.png'),),

                              shape: BoxShape.rectangle,

                            ),


                          ),
                          SizedBox(height: 8),
                          Text(
                            "?????????? ????????????",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),

                    ),
                  ),
                ],
              ),
              RaisedButton(
                child: Text(
                  " **** ?????????? ???? ?????????????????????? ****",
                  style: GoogleFonts.tajawal(),
                  textAlign: TextAlign.center,
                ),
                textColor: ArgonColors.white,
                color: ArgonColors.warning,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    child: Text(
                      _staffname,
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.black,
                    color: ArgonColors.secondary,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    child: Text(
                      "?????????? ",
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.white,
                    color: ArgonColors.warning,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    child: Text(
                      _phonne,
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.black,
                    color: ArgonColors.secondary,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    child: Text(
                      "?????? ???????????? ",
                      style: GoogleFonts.tajawal(),
                      textAlign: TextAlign.center,
                    ),
                    textColor: ArgonColors.white,
                    color: ArgonColors.warning,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ],
              ),
            ]): Container(),
          ),

        ),
        Center(
          child: Container(
              child: RaisedButton.icon(
                  color: Colors.red,
                  icon: Icon(FontAwesomeIcons.share),

                  label: Text("Share Offer Screenshot "),
                  onPressed: () {
                    ShareFilesAndScreenshotWidgets().shareScreenshot(
                        previewContainer,
                        originalSize,
                        "Title",
                        "Name.png",
                        "image/png",
                        text: "this is your offer");
                  })),
        ),

      ],
    );
  }

}




class ArgonColors {
  static const Color black = Color(0xFF000000);

  static const Color white = Color(0xFFFFFFFF);

  static const Color initial = Color.fromRGBO(23, 43, 77, 1.0);

  static const Color primary = Color.fromRGBO(94, 114, 228, 1.0);

  static const Color secondary = Color.fromRGBO(247, 250, 252, 1.0);

  static const Color label = Color.fromRGBO(254, 36, 114, 1.0);

  static const Color info = Color.fromRGBO(17, 205, 239, 1.0);

  static const Color error = Color.fromRGBO(245, 54, 92, 1.0);

  static const Color success = Color.fromRGBO(45, 206, 137, 1.0);

  static const Color warning = Color.fromRGBO(251, 99, 64, 1.0);

  static const Color header = Color.fromRGBO(82, 95, 127, 1.0);

  static const Color bgColorScreen = Color.fromRGBO(248, 249, 254, 1.0);

  static const Color border = Color.fromRGBO(202, 209, 215, 1.0);

  static const Color inputSuccess = Color.fromRGBO(123, 222, 177, 1.0);

  static const Color inputError = Color.fromRGBO(252, 179, 164, 1.0);

  static const Color muted = Color.fromRGBO(136, 152, 170, 1.0);

  static const Color text = Color.fromRGBO(50, 50, 93, 1.0);
}


