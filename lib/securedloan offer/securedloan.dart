import 'dart:math';
import 'package:bmstaffhelp/creditcardoffers/light_colors.dart';
import 'package:bmstaffhelp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';
import 'package:bmstaffhelp/securedloan offer/securedloanreport.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../lock.dart';
class securedoffer extends StatefulWidget {

  @override
  _CustomerofferState createState() => _CustomerofferState();
}

class _CustomerofferState extends State<securedoffer> {

  List _tenureTypes = ['اشهر', 'سنوات'];
  String _tenureType = "سنوات";
  String _emiResult = "";
  String _loanamount = "";
  String _fixed = "";
  String _differnce = "";
  String _customerearn = "";
  String _payed = "";
  String _remaindayes = "";
  String _topamount = "";

  String _first = "";
  String _firsta = "";
  String _firsti = "";
  String _seconda = "";
  String _secondi = "";
  String _thirda = "";
  String _thirdi = "";
  String _second = "";
  String _third = "";
  String _totalinterst = "";
  String _totalinterest2 ="";
  String _period ="";
  String _totalcd ="";
  String _adminfees ="";
  bool _isChecked = false;

  static final DateTime now =  DateTime.now() ;
  static final DateFormat formatter = DateFormat("d");
  final String formatted = formatter.format(now);
  final int day = int.parse(formatter.format(now));

  final TextEditingController _customername = TextEditingController();
  final TextEditingController _staffname = TextEditingController();
  final TextEditingController _staffnumb = TextEditingController();

  final TextEditingController _principalAmount = TextEditingController();
  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();
  final TextEditingController _firstamount = TextEditingController();
  final TextEditingController _secondamount = TextEditingController();
  final TextEditingController _thirdamount = TextEditingController();
  final TextEditingController _firstinterest = TextEditingController();
  final TextEditingController _secondinterest = TextEditingController();
  final TextEditingController _thirdinterest = TextEditingController();

  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 800;


  bool _switchValue = true;
  @override

  void initState() {
    // ignore: unnecessary_statements
    _loadUserEmailPasswords();

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Stack(
            children: [

              Column(
                  children: <Widget>[
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
                          SizedBox(width: 25,),
                          Container(child: Text("Secured Loan Offer",style: GoogleFonts.cairo(color: LightColors.kRed,fontSize: 25,fontWeight: FontWeight.bold),),),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(right: 50,left: 50),
                      child: Divider(color: LightColors.kRed,thickness: 1.5,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,right: 15),
                      child: Container(child: Center(child: Text("أدخل تفاصيل الشهادات",style:  GoogleFonts.cairo(color: Colors.black,fontSize: 20,),)),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Container(
                          height: 60,
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              controller: _customername,
                              style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),
                              keyboardType: TextInputType.text,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    FontAwesomeIcons.userAlt
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "اسم العميل",
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
                            ),
                          ),
                        ),

                        


                      ],

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Container(
                          height: 60,
                          width: 160,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              style: TextStyle(color: Colors.black),
                              controller: _firstinterest,
                              keyboardType: TextInputType.number,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.rate_review_rounded,
                                    color: Colors.blue,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "معدل العائد",
                                  hintStyle: TextStyle(color: Colors.grey),
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
                                  fillColor: Colors.grey[100]
                              ),
                            ),
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 200,

                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              style: TextStyle(color: Colors.black),
                              controller: _firstamount,
                              keyboardType: TextInputType.number,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.looks_one,
                                    color: Colors.blue,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "الشهاده الاولى ",
                                  hintStyle: TextStyle(color: Colors.grey),
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
                                  fillColor: Colors.grey[100]
                              ),
                            ),
                          ),
                        ),


                      ],

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 160,

                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(

                              style: TextStyle(color: Colors.black),
                              controller: _secondinterest,
                              keyboardType: TextInputType.number,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.rate_review_rounded,
                                    color: Colors.red,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "معدل العائد",
                                  hintStyle: TextStyle(color: Colors.grey),
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
                                  fillColor: Colors.grey[100]
                              ),
                            ),
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 200,

                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              style: TextStyle(color: Colors.black),
                              controller: _secondamount,
                              keyboardType: TextInputType.number,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.looks_two,
                                    color: Colors.red,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "الشهاده الثانيه",
                                  hintStyle: TextStyle(color: Colors.grey),
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
                                  fillColor: Colors.grey[100]
                              ),
                            ),
                          ),
                        ),


                      ],

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 160,

                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              style: TextStyle(color: Colors.black),
                              controller: _thirdinterest,
                              keyboardType: TextInputType.number,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.rate_review_rounded,
                                    color: Colors.teal,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "معدل العائد",
                                  hintStyle: TextStyle(color: Colors.grey),
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
                                  fillColor: Colors.grey[100]
                              ),
                            ),
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 200,

                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              style: TextStyle(color: Colors.black),
                              controller: _thirdamount,
                              keyboardType: TextInputType.number,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.looks_3,
                                    color: Colors.teal,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "الشهاده الثالثه",
                                  hintStyle: TextStyle(color: Colors.grey),
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
                                  fillColor: Colors.grey[100]
                              ),
                            ),
                          ),
                        ),


                      ],

                    ),
                    SizedBox(height: 2,),
                    RaisedButton(
                      color: LightColors.kRed,
                      disabledTextColor: Colors.black,
                      disabledColor:Colors.black,
                      focusColor: Colors.black,
                      hoverColor: Colors.black,
                      splashColor: Colors.black,
                      elevation: 15,
                      focusElevation: 15,
              onPressed: () {
               if (  _firstamount.text =="" ){
                 showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return AlertDialog(
                         title: Center(
                             child: Text(
                               "يجب ادخال قيمه للشهاده الاولى وفى حاله عدم وجود قيمه ادخل 0 ",
                               textAlign: TextAlign.center,
                             )),
                       );
                     });
               } else if (  _secondamount.text =="" ){
                 showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return AlertDialog(
                         title: Center(
                             child: Text(
                               "يجب ادخال قيمه للشهاده الثانيه وفى حاله عدم وجود قيمه ادخل 0 ",
                               textAlign: TextAlign.center,
                             )),
                       );
                     });
               } else if (  _thirdamount.text =="" ){
                 showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return AlertDialog(
                         title: Center(
                             child: Text(
                               "يجب ادخال قيمه للشهاده الثالثه وفى حاله عدم وجود قيمه ادخل 0 ",
                               textAlign: TextAlign.center,
                             )),
                       );
                     });
               }
               else if (  _firstinterest.text =="" ){
                 showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return AlertDialog(
                         title: Center(
                             child: Text(
                               "يجب ادخال عائد للشهاده الاولى وفى حاله عدم وجود قيمه ادخل 0 ",
                               textAlign: TextAlign.center,
                             )),
                       );
                     });
               }
               else if (  _secondinterest.text =="" ){
                 showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return AlertDialog(
                         title: Center(
                             child: Text(
                               "يجب ادخال عائد للشهاده الثانيه وفى حاله عدم وجود قيمه ادخل 0 ",
                               textAlign: TextAlign.center,
                             )),
                       );
                     });
               }
               else if (  _thirdinterest.text =="" ){
                 showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return AlertDialog(
                         title: Center(
                             child: Text(
                               "يجب ادخال عائد للشهاده الثالثه وفى حاله عدم وجود قيمه ادخل 0 ",
                               textAlign: TextAlign.center,
                             )),
                       );
                     });
               }

               else if (int.parse(_firstamount.text) > 0) {

                 _topamount4();
               }
    }
      ,

                       //
                      animationDuration: Duration( seconds: 100),
                      child: Text(
                        "Calculate 1\nاحسب اقصى قيمه بضمان الشهادات المدخله",
                        style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                      ),
                      textColor: Colors.white,
                    ),
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Flexible(

                          child: Container(
                            child: Center(child:

                            Text(

                              _topamount,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                            color: Colors.white,
                            height: 50,
                            width: 100,

                          ),
                        ),

                        Container(
                          child: Center(child: Text("اقصى قيمه للقرض بناء على \n      الشهادات المدخله",style: GoogleFonts.cairo(color: Colors.white))),
                          color: Colors.blue,
                          height: 50,
                          width: 180,

                        ),

                      ],

                    ),
                    SizedBox(height: 5,),

                    Padding(
                      padding: const EdgeInsets.only(top: 20,right: 15),
                      child: Container(child: Center(child: Text("أدخل تفاصيل القرض",style:  GoogleFonts.cairo(color: Colors.black,fontSize: 20,),)),),
                    ),                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 160,

                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              keyboardType: TextInputType.number,

                              style: TextStyle(color: Colors.black),
                              controller: _interestRate,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.rate_review_rounded,
                                    color: Colors.teal,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "العائد",
                                  hintStyle: TextStyle(color: Colors.grey),
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
                                  fillColor: Colors.grey[100]
                              ),
                            ),
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 200,

                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              keyboardType: TextInputType.number,

                              style: TextStyle(color: Colors.black),
                              controller: _principalAmount,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.circle,
                                    color: Colors.teal,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "مبلغ القرض",
                                  hintStyle: TextStyle(color: Colors.grey),
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
                                  fillColor: Colors.grey[100]
                              ),
                            ),
                          ),
                        ),


                      ],

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Column(children: [
                              Text(_tenureType,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Switch(
                                  activeColor: Colors.red,
                                  inactiveTrackColor: Colors.white,
                                  value: _switchValue,
                                  onChanged: (bool value) {
                                    print(value);

                                    if (value) {
                                      _tenureType = _tenureTypes[1];
                                    } else {
                                      _tenureType = _tenureTypes[0];
                                    }

                                    setState(() {
                                      _switchValue = value;
                                    });
                                  })
                            ])),
                        Container(
                          width: 280,
                          height: 60,

                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              keyboardType: TextInputType.number,

                              style: TextStyle(color: Colors.black),
                              controller: _tenure,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.rate_review_rounded,
                                    color: Colors.teal,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "مده القرض",
                                  hintStyle: TextStyle(color: Colors.grey),
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
                                  fillColor: Colors.grey[100]
                              ),
                            ),
                          ),
                        ),





                      ],

                    ),
                    Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          children: <Widget>[


                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Container(
                                  height: 60,
                                  width: 300,
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: new TextField(
                                      controller: _staffname,
                                      style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.text,

                                      textAlign: TextAlign.right,
                                      decoration: InputDecoration(

                                          suffixIcon: Icon(
                                              FontAwesomeIcons.userAlt
                                          ),
                                          hoverColor: Colors.red,
                                          hintText: "اسم الموظف",
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
                                    ),
                                  ),
                                ),




                              ],

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Container(
                                  height: 60,
                                  width: 300,
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: new TextField(
                                      controller: _staffnumb,
                                      style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.number,

                                      textAlign: TextAlign.right,
                                      decoration: InputDecoration(

                                          suffixIcon: Icon(
                                              FontAwesomeIcons.phone
                                          ),
                                          hoverColor: Colors.red,
                                          hintText: "رقم الهاتف",
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
                                    ),
                                  ),
                                ),



                              ],

                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                Text("حفظ بيانات التواصل",
                                    style: GoogleFonts.openSans(color: Color(0xff646464),fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(width: 10.0),

                                SizedBox(
                                    height: 24.0,
                                    width: 24.0,
                                    child: Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: Color(0xff00C8E8) // Your color
                                      ),
                                      child: Checkbox(
                                          activeColor: Color(0xff00C8E8),
                                          value: _isChecked,
                                          onChanged: _handleRemebermedata
                                      ),
                                    )),

                              ]),
                            ),
                            ////

                            ///
                            RaisedButton(
                              color: LightColors.kRed,
                              disabledTextColor: Colors.black,
                              disabledColor:Colors.black,
                              focusColor: Colors.black,
                              hoverColor: Colors.black,
                              splashColor: Colors.black,
                              elevation: 15,
                              focusElevation: 15,
                              onPressed: (){
                                if(int.parse(_principalAmount.text)>int.parse(_topamount)){
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Center(
                                              child: Text(
                                                "قيمه القرض المدخله  "+_principalAmount.text +  " اكبر من اقصى قيمه يمكن الحصول عليها وهى $_topamount",
                                                textAlign: TextAlign.center,
                                              )),
                                        );
                                      });
                                } else if(_tenureType.contains("اشهر") &&
                                    int.parse(_tenure.text) >120
                                ){
    showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
    title: Center(
    child: Text("أقصى مده للقرض 120 شهر",
    textAlign: TextAlign.center,
    )),
    );
    });
    }else if(_tenureType.contains("سنوات") &&
                                    int.parse(_tenure.text) >10
                                ){
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Center(
                                              child: Text("أقصى مده للقرض 10 سنوات",
                                                textAlign: TextAlign.center,
                                              )),
                                        );
                                      });
                                }
                                else if (int.parse(_principalAmount.text) >=
                                    0) {

                                  _handleCalculation();
                                }
                              }
                              ,

                                //_handleCalculation
                              animationDuration: Duration( seconds: 100),
                              child: Text(
                                "Calculate",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              textColor: Colors.white,
                            ),

                            emiResultsWidget(_emiResult)

                          ],
                        )),

                  ]),

            ]),
      ),
    );
  }
  void _topamount4() {
    double topamount1= double.parse(_firstamount.text);
    double topamount2= double.parse(_secondamount.text);
    double topamount3= double.parse(_thirdamount.text);
    double totaltopamount= 0.0;

    totaltopamount= (topamount1+topamount2+topamount3)*80/100;

    _topamount=totaltopamount.toStringAsFixed(0);

    setState(() {
      _topamount = totaltopamount.toStringAsFixed(0);

    });
  }
  void _handleCalculation() {

    //  Amortization
    //  A = Payemtn amount per period
    //  P = Initial Printical (loan amount)
    //  r = interest rate
    //  n = total number of payments or periods

    //////////////////////
    double f1= double.parse(_firstamount.text);
    double f2= double.parse(_secondamount.text);
    double f3= double.parse(_thirdamount.text);
    double r1 = double.tryParse(_firstinterest.text) / 12 / 100;
    double r2 = double.tryParse(_secondinterest.text) / 12 / 100;
    double r3 = double.tryParse(_thirdinterest.text) / 12 / 100;
    double aa = 0.0;
    double bb = 0.0;
    double cc = 0.0;
    double ii = 0.0;
    double iii = 0.0;
    double iiii = 0.0;
    double totalinterst = 0.0;
    double differnce = 0.0;
    double totalcd = 0.0;
    int today =30;
    int diffrenced =0;

    diffrenced= today-day;
    _remaindayes =diffrenced.toString();
    aa = (f1*r1);
    bb = (f2*r2);
    cc = (f3*r3);
    ii= r1*12*100;
    iii=r2*12*100;
    iiii=r3*12*100;
    totalinterst = aa+bb+cc;
    _first =aa.toStringAsFixed(2);
    _second =bb.toStringAsFixed(2);
    _third =cc.toStringAsFixed(2);
    _firsta =f1.toStringAsFixed(0);
    _firsti=ii.toStringAsFixed(2);
    _seconda =f2.toStringAsFixed(0);
    _secondi=iii.toStringAsFixed(2);
    _thirda =f3.toStringAsFixed(0);
    _thirdi=iiii.toStringAsFixed(2);
    _totalinterst = totalinterst.toStringAsFixed(2);


    ////////////////////////


    double A = 0.0;
    double adminfees = 0.0;

    double totalinteret2 = 0.0;
    double fixed = 0.0;
    int period = 0;
    double customer = 0.0;
    double payed = 0.0;

    double P = double.parse(_principalAmount.text);
    double r = double.tryParse(_interestRate.text) / 12 / 100;
    int n = _tenureType == "سنوات" ? int.parse(_tenure.text) * 12  : int.parse(_tenure.text);
adminfees = P*1/100;
    A = (P * r * pow((1+r), n) / ( pow((1+r),n) -1));
    totalinteret2 = ((A * n) - P );
    fixed = (totalinteret2*12)/(P*n)*100;
    differnce = totalinterst- A ;
    period = n;
    totalcd= ((P*ii/100)/12 )*n;
    customer = totalcd-totalinteret2;
    payed = P - customer;
    _loanamount = P.toStringAsFixed(2);
    _period =period.toStringAsFixed(0);
    _differnce= differnce.toStringAsFixed(2);
    _emiResult = A.toStringAsFixed(2);
    _totalinterest2=totalinteret2.toStringAsFixed(2);
    _adminfees = adminfees.toStringAsFixed(2);
/////////////////////////////////////

    _fixed=fixed.toStringAsFixed(2);
    _totalcd=totalcd.toStringAsFixed(2);
    _customerearn = customer.toStringAsFixed(2);
    _payed = payed.toStringAsFixed(2);
    setState(() {

    });
  }


  Widget emiResultsWidget(emiResult) {

    bool canShow = false;
    String _emiResult = emiResult;

    if( _emiResult.length > 0 ) {
      canShow = true;
    }
    return
      Column(
        children: [




            Container(
              color: LightColors.kRed,

              margin: EdgeInsets.only(top: 15.0),
              child: canShow ? Column(
                  children: [

                    Text("القسط الشهرى",
                        style: GoogleFonts.cairo(fontSize: 25, color: Colors.white)),

                    Container(
                      child: Text("$_emiResult  ",
                        style: GoogleFonts.cairo(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),),
                    ),
                    Container(

                      decoration:
                      BoxDecoration(
                          color: LightColors.kRed,
                          border: Border.all(color: Colors.white)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Text("الفرق بين العائد و القسط",
                                        style: GoogleFonts.cairo(
                                            fontSize: 15, color: Colors.white)),
                                    Text(
                                      _differnce,
                                      style: GoogleFonts.cairo(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.only(right: 10,left: 2),
                              ),
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 55,
                            color: Colors.white,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Text("مجموع عائد الشهادات",
                                        style: GoogleFonts.cairo(
                                            fontSize: 15, color: Colors.white)),
                                    Text(
                                      _totalinterst,
                                      style: GoogleFonts.cairo(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.only(right: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: (){
                            return generateAndPrintArabicPdfsecure(details:_customername.text,details2:_staffname.text,details3:_staffnumb.text,bookNum: "-- صوره بطاقه الرقم القومى للزوج والزوجه",replay: "-- إيصال مرافق حديث على عنوان الاقامه الحالى بحد اقصى 3 شهور  كهرباء أو غاز أو مياه ",date: " --شهاده بالدخل من جهه العمل صلاحيتها شهرين على الاكثر وفى حاله وجود دخول غير دوريه \n او ارياح يتم تقديم ما يثبت ذلك أو ثلاث شرائط راتب حديثهاصل أو صوره معتمده\n  أو كشف حساب بنكى يوضح تحويل الراتب لمده 3 أشهر سابقه",subject: _principalAmount.text,
                           items: [ "$_first" ,"%"+"$_firsti","$_firsta","1"],
                              itemss: [ "$_second" ,"%"+"$_secondi","$_seconda","2"],
                              itemsss: [ "$_third" ,"%"+"$_thirdi","$_thirda","3"],
                              itemsss4: [ "$_totalinterst" ,"اجمالى العائد الشهرى"],
                              itemsss5: [ "$_adminfees" ,"%"+"$_fixed",_tenure.text +" "+ _tenureType.toString(),"$_loanamount"],
                              itemsss6: [ "$_emiResult" ,"القســــــــــط الشهـــــــرى"],
                              itemsss7: [ "$_differnce" ,"الفرق بين العائد الشهرى للشهادات والقسط الشهرى للقرض"],
                              itemsss8: [ "$_totalcd" ,"$_period","%"+"$_firsti","$_loanamount"],

                              itemsss9: [ "الفايده المدفوعه","المده بالشهور","معدل العائد","مبلغ القرض"],
                              itemsss10: [ "$_totalinterest2" ,"$_period","%"+"$_fixed","$_loanamount"],
                              itemsss11: [ "$_customerearn" ,"مكسب العميل"],
                              itemsss12: [ "$_loanamount" ,"قيمه القرض"],
                              itemsss13: [ "$_payed" ,"ماتم سدادة"],

                            );},
                          color: LightColors.kDarkBlue,
                          child: Text(
                              'طباعه التقرير',
                              style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)
                          ),
                        ),
                      ],
                    ),
                  ]

              ) : Container(),



            ),



        ],

      );

  }
  void _handleRemebermedata(bool value) {
    _isChecked = value;
    SharedPreferences.getInstance().then(
          (prefs) {
        prefs.setBool("remember_me", value);
        prefs.setString('name', _staffname.text);
        prefs.setString('nmber', _staffnumb.text);

          },
    );
    setState(() {
      _isChecked = value;
    });
  }
  void _loadUserEmailPasswords() async {
    print("Load Email");

    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var _name = _prefs.getString("name") ?? "";
      var _number = _prefs.getString("nmber") ?? "";

      var _remeberMe = _prefs.getBool("remember_me") ?? false;
      print(_remeberMe);
      print(_name);
      if (_remeberMe) {
        setState(() {
          _isChecked = true;
        });
        _staffname.text = _name ?? "";
        _staffnumb.text = _number ?? "";

      }
    } catch (e)
    {
      print(e);
    }
  }

}
