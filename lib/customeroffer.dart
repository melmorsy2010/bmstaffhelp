import 'dart:math';
import 'package:bmstaffhelp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';
class Customeroffer extends StatefulWidget {
  @override
  _CustomerofferState createState() => _CustomerofferState();
}

class _CustomerofferState extends State<Customeroffer> {
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

  static final DateTime now =  DateTime.now() ;
  static final DateFormat formatter = DateFormat("d");
  final String formatted = formatter.format(now);
 final int day = int.parse(formatter.format(now));


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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Stack(
            children: [
        Container(
        foregroundDecoration: BoxDecoration(color: Colors.black26),
        height: 1400,
        child: Image.asset(
          'assets/dark.jpg', fit: BoxFit.cover, width: MediaQuery
            .of(context)
            .size
            .width,),
      ),
      Column(
          children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 40,left: 10),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.backward,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(width: 50,),
            Container(child: Text("CUSTOMER OFFER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
          ],
        ),
      ),

            Divider(color: Colors.white,),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(child: Text("ادخل تفاصيل الشهادات",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
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
              color: Colors.red,
              disabledTextColor: Colors.deepOrange,
              disabledColor:Colors.deepOrange,
              focusColor: Colors.deepOrange,
              hoverColor: Colors.deepOrange,
              splashColor: Colors.deepOrange,
              elevation: 15,
              focusElevation: 15,
              onPressed: _topamount4,
              animationDuration: Duration( seconds: 100),
              child: Text(
                "                       Calculate 1\nاحسب اقصى قيمه بضمان الشهادات المدخله",
                style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.bold),
              ),
              textColor: Colors.white,
            ),
            SizedBox(height: 7,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Flexible(

                  child: Container(
                    child: Center(child: Text(_topamount,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    color: Colors.white,
                    height: 50,
                    width: 100,

                  ),
                ),

                Container(
                  child: Center(child: Text("اقصى قيمه للقرض بناء على \n      الشهادات المدخله",style: TextStyle(color: Colors.white),)),
                  color: Colors.blue,
                  height: 50,
                  width: 180,

                ),

              ],

            ),
            SizedBox(height: 5,),

            Container(child: Text("ادخل تفاصيل القرض",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
            Row(
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
                              color: Colors.white)),
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

                      RaisedButton(
color: Colors.red,
                        disabledTextColor: Colors.deepOrange,
                        disabledColor:Colors.deepOrange,
                        focusColor: Colors.deepOrange,
                        hoverColor: Colors.deepOrange,
                        splashColor: Colors.deepOrange,
                        elevation: 15,
                        focusElevation: 15,
                        onPressed: _handleCalculation,
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
    double totalinteret2 = 0.0;
    double fixed = 0.0;
    int period = 0;
    double customer = 0.0;
    double payed = 0.0;

    double P = double.parse(_principalAmount.text);
    double r = double.tryParse(_interestRate.text) / 12 / 100;
    int n = _tenureType == "سنوات" ? int.parse(_tenure.text) * 12  : int.parse(_tenure.text);

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
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
              child: Text("عزيزي العميل : مرفق لسيادتكم العرض الخاص بكم",textAlign: TextAlign.right,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
            ),

            RepaintBoundary(
              key: previewContainer,

              child: Container(

                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: EdgeInsets.only(top: 15.0),
                child: canShow ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                             Container(
                                child: Center(child: Text("الفايده الشهريه",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 50,
                                width: 90,

                              ),

                             Container(
                                child: Center(child: Text("معدل العائد",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueAccent,
                                height: 50,
                                width: 100,

                              ),


                             Container(
                                child: Center(child: Text("اصل الشهاده",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.red,
                                height: 50,
                                width: 100,

                              ),

                            Container(
                                child: Center(child: Text("مسلسل \nالشهاده",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 50,
                                width: 60,

                              ),

                          ],

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Flexible(

                              child: Container(
                                child: Center(child: Text(_first,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 30,
                                width: 90,

                              ),
                            ),
                            Container(
                                child: Center(child: Text(_firsti,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueAccent,
                                height: 30,
                                width: 100,

                              ),



                             Container(
                                child: Center(child: Text(_firsta,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.red,
                                height: 30,
                                width: 100,

                              ),
                        Container(
                                child: Center(child: Text("الاولى",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 60,

                              ),

                          ],

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Flexible(

                              child: Container(
                                child: Center(child: Text(_second,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 30,
                                width: 90,

                              ),
                            ),
                         Container(
                                child: Center(child: Text(_secondi,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueAccent,
                                height: 30,
                                width: 100,

                              ),


                             Container(
                                child: Center(child: Text(_seconda,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.red,
                                height: 30,
                                width: 100,

                              ),


 Container(
                                child: Center(child: Text(" الثانيه ",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 60,

                              ),

                          ],

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Flexible(

                              child: Container(
                                child: Center(child: Text(_third,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 30,
                                width: 90,

                              ),
                            ),
                             Container(
                                child: Center(child: Text(_thirdi,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueAccent,
                                height: 30,
                                width: 100,

                              ),
                            Container(
                                child: Center(child: Text(_thirda,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.red,
                                height: 30,
                                width: 100,

                              ),
                             Container(
                                child: Center(child: Text(" الثالثه ",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 60,

                              ),

                          ],

                        ),
                        Divider(color:Colors.white,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Flexible(

                              child: Container(
                                child: Center(child: Text(_totalinterst,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 30,
                                width: 120,
                              ),
                            ),

                            Container(
                                child: Center(child: Text("اجمالى العائد الشهرى",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 200,

                              ),

                          ],

                        ),
                        Divider(color:Colors.white,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Flexible(

                              child: Container(
                                child: Center(child: Text("القسط الشهرى",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 30,
                                width: MediaQuery.of(context).size.width,

                              ),
                            ),
                            Container(
                                child: Center(child: Text("الفايده الثابته",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueAccent,
                                height: 30,
                                width: 100,

                              ),
                            Container(
                                child: Center(child: Text("مبلغ القرض",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 110,

                              ),

                          ],

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Flexible(

                              child: Container(
                                child: Center(child: Text(_emiResult,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 30,
                                width: MediaQuery.of(context).size.width,

                              ),
                            ),
                           Container(
                                child: Center(child: Text(_fixed,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueAccent,
                                height: 30,
                                width: 100,

                              ),
                            Container(
                                child: Center(child: Text(_loanamount,style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 110,

                              ),

                          ],

                        ),
                        Divider(color:Colors.white,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Flexible(

                              child: Container(
                                child: Center(child: Text(_differnce,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 30,
                                width: 120,
                              ),
                            ),

                            Container(
                                child: Center(child: Text("الفرق بين القسط والعائد",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 200,

                              ),

                          ],

                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text("مقارنه بين الفوائد المكتسبه والمدفوعه",textAlign: TextAlign.right,style: TextStyle(fontSize: 17),),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Flexible(

                              child: Container(
                                child: Center(child: Text("الفايده المكتسبه",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueGrey,
                                height: 30,
                                width: 100,

                              ),
                            ),
                            Container(
                                child: Center(child: Text("المده بالشهور",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 30,
                              width: 90,

                              ),
                            Container(
                                child: Center(child: Text("معدل العائد",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueAccent,
                                height: 30,
                              width: 70,

                              ),
                             Container(
                                child: Center(child: Text("مبلغ الشهاده",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 90,

                              ),

                          ],

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Flexible(

                              child: Container(
                                child: Center(child: Text(_totalcd,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueGrey,
                                height: 30,
                                width: 100,

                              ),
                            ),
                           Container(
                                child: Center(child: Text(_period,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 30,
                             width: 90,

                              ),
                            Container(
                                child: Center(child: Text(_firsti,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueAccent,
                                height: 30,
                                width: 70,

                              ),
                            Container(
                                child: Center(child: Text(_loanamount,style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 98,

                              ),

                          ],

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Flexible(

                              child: Container(
                                child: Center(child: Text("الفايده المدفوع",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueGrey,
                                height: 30,
                                width: 100,

                              ),
                            ),
                            Container(
                                child: Center(child: Text("المده بالشهور",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 30,
                              width: 90,

                              ),
                            Container(
                                child: Center(child: Text("معدل العائد",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueAccent,
                                height: 30,
                                width: 70,

                              ),

                             Container(
                                child: Center(child: Text("مبلغ القرض",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 98,

                              ),

                          ],

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Flexible(

                              child: Container(
                                child: Center(child: Text(_totalinterest2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueGrey,
                                height: 30,
                                width: 100,

                              ),
                            ),
                             Container(
                                child: Center(child: Text(_period,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.green,
                                height: 30,
                               width: 90,

                              ),
                           Container(
                                child: Center(child: Text(_fixed,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueAccent,
                                height: 30,
                                width: 70,

                              ),
                            Container(
                                child: Center(child: Text(_loanamount,style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 98,

                              ),

                          ],

                        ),
                        Divider(color:Colors.white,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[

                            Flexible(

                              child: Container(
                                child: Center(child: Text(_customerearn,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueGrey,
                                height: 30,
                                width: 120,

                              ),
                            ),

                            Container(
                                child: Center(child: Text("مكسب العميل",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 180,

                              ),

                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text("اى ان القرض تم سداده بقيمه اقل من الذى تم استلافه",textAlign: TextAlign.right,style: TextStyle(fontSize: 17),),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[

                            Flexible(

                              child: Container(
                                child: Center(child: Text(_loanamount,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueGrey,
                                height: 30,
                                width: 120,

                              ),
                            ),

                             Container(
                                child: Center(child: Text("قيمه القرض",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 180,

                              ),

                          ],

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[

                            Flexible(

                              child: Container(
                                child: Center(child: Text(_payed,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                color: Colors.blueGrey,
                                height: 30,
                                width: 120,

                              ),
                            ),

                            Container(
                                child: Center(child: Text("ماتم سداده",style: TextStyle(color: Colors.white),)),
                                color: Colors.black,
                                height: 30,
                                width: 180,

                              ),

                          ],

                        ),


                      ]

                ) : Container(),



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
