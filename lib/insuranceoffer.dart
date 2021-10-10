import 'dart:math';
import 'package:bmstaffhelp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:open_file/open_file.dart' as open_file;

class Customeroffer5 extends StatefulWidget {
  @override
  _Customeroffer5State createState() => _Customeroffer5State();
}

class _Customeroffer5State extends State<Customeroffer5> {
  List _tenureTypes = ['اشهر', 'سنوات'];
  String _tenureType = "سنوات";
  String _emiResult = "";
  String _loanamount = "";
  String _fixed = "";
  String _differnce = "";
  String _differnce2 = "";
String _totalbenefit= "";
  String _totalbenefit2= "";

  String _customerearn = "";
  String _payed = "";
  String _remaindayes = "";
  String _expectvalue = "";
  String _expectvalue2 = "";

  String _rone = "";
  String _maksb = "";
  String offer = "Customer Offer";

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
  final TextEditingController _firstinterest = TextEditingController();

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
                          Container(child: Text("Banca & loan offer",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                        ],
                      ),
                    ),

                    Divider(color: Colors.white,),


                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(child: Text("ادخل تفاصيل الشهاده",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
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
                                  hintText: "قيمه الشهاده",
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
                    SizedBox(height: 10,),
                    RaisedButton(
                      color: Colors.red,
                      disabledTextColor: Colors.deepOrange,
                      disabledColor:Colors.deepOrange,
                      focusColor: Colors.deepOrange,
                      hoverColor: Colors.deepOrange,
                      splashColor: Colors.deepOrange,
                      elevation: 15,
                      focusElevation: 15,
                      onPressed: _handleexpect,
                      animationDuration: Duration( seconds: 100),
                      child: Text(
                        "Calculate 1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      textColor: Colors.white,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Flexible(

                          child: Container(
                            child: Center(child: Text(_rone,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                            color: Colors.white,
                            height: 50,
                            width: 100,

                          ),
                        ),

                        Container(
                          child: Center(child: Text("مجموع عائد الشهاده خلال\n        ثلاث سنوات       ",style: TextStyle(color: Colors.white),)),
                          color: Colors.blue,
                          height: 50,
                          width: 180,

                        ),

                      ],

                    ),

                    SizedBox(height: 10,),
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
                                "Calculate 2",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              textColor: Colors.white,
                            ),

                            emiResultsWidget(_emiResult),


                          ],
                        )

                    ),

                  ]),

            ]

        ),
      ),
    );
  }
  void _handleexpect() {

    //  Amortization
    //  A = Payemtn amount per period
    //  P = Initial Printical (loan amount)
    //  r = interest rate
    //  n = total number of payments or periods

    //////////////////////
    int f1= int.parse(_firstamount.text);
    double rone= double.tryParse(_firstinterest.text) / 12 / 100;
    double ronee = 0.0;

    ronee = (f1*rone)*36;
    int today =30;
    int diffrenced =0;
    double expect = 0.0;
    double expect3 = 0.0;

    int expect2 = 0;

    diffrenced= today-day;
    _remaindayes =diffrenced.toString();
    expect = f1*40.50/100;
    expect3 = f1*37.00/100;

    expect2 = expect.round();
    int n =num.parse(expect.toStringAsFixed(0)) ;
    int a= n.round();
    _expectvalue= a.toStringAsFixed(0);
    _expectvalue2= expect3.toStringAsFixed(0);

    _rone =ronee.toStringAsFixed(0);


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
    double r1 = double.tryParse(_firstinterest.text) / 12 / 100;
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
    double move = 0.0;
    diffrenced= today-day;
    _remaindayes =diffrenced.toString();
    move = f1*42.50/100;
    aa = (f1*r1);
    ii= r1*12*100;
    iii =(f1*r1)*36;
    _first =aa.toStringAsFixed(2);
    _second =bb.toStringAsFixed(2);
    _third =cc.toStringAsFixed(2);
    _firsta =f1.toStringAsFixed(0);
    _firsti=ii.toStringAsFixed(2);
    _secondi=iii.toStringAsFixed(2);
    _thirdi=iiii.toStringAsFixed(2);


    ////////////////////////


    double A = 0.0;
    double totalinteret2 = 0.0;
    double fixed = 0.0;
    int period = 0;
    double customer = 0.0;
    double payed = 0.0;
    double ccc=0.0;
    double  difference2 =0.0;
    double  totalbenefit =0.0;
    double  totalbenefit2 =0.0;

    double P = double.parse(_principalAmount.text);
    double r = double.tryParse(_interestRate.text) / 12 / 100;
    int n = _tenureType == "سنوات" ? int.parse(_tenure.text) * 12  : int.parse(_tenure.text);

    A = (P * r * pow((1+r), n) / ( pow((1+r),n) -1));
    totalinteret2 = P*(1/100);
    customer= ((A * n) - P );

    fixed = (customer*12)/(P*n)*100;
    period = n;

    totalcd= ((P*ii/100)/12 )*n;
    customer = totalcd-totalinteret2;
    payed = P - (P*1/100);
    ccc = payed*r1 ;
    totalinterst = aa+ccc;
    differnce = totalinterst- A ;
difference2 = differnce*36 ;
totalbenefit = payed + difference2 ;
    totalbenefit2 = totalbenefit/f1*100/3 ;
    _totalinterst = totalinterst.toStringAsFixed(2);

    _loanamount = P.toStringAsFixed(0);
    _period =ccc.toStringAsFixed(2);
    _differnce= differnce.toStringAsFixed(2);
    _differnce2 = difference2.toStringAsFixed(0);
    _totalbenefit = totalbenefit.toStringAsFixed(0);
    _totalbenefit2 = totalbenefit2.toStringAsFixed(2);
    _emiResult = A.toStringAsFixed(2);
    _totalinterest2=totalinteret2.toStringAsFixed(2);
/////////////////////////////////////
    double maksb = 0.0;
    maksb = payed-iii;
    _fixed=fixed.toStringAsFixed(2);
    _totalcd=totalcd.toStringAsFixed(2);
    _customerearn = customer.toStringAsFixed(2);
    _payed = payed.toStringAsFixed(0);
    _maksb =maksb.toStringAsFixed(0);
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
              child: Text("يتم تقريب الشهاده الى اقرب رقم ",textAlign: TextAlign.right,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
          ),

          Container(

            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            margin: EdgeInsets.only(top: 15.0),
            child: canShow ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Flexible(

                        child: Container(
                          child: Center(child: Text("صافى الشهاده",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 30,
                          width: MediaQuery.of(context).size.width,

                        ),
                      ),
                      Container(
                        child: Center(child: Text("المصاريف الاداريه",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        color: Colors.blueAccent,
                        height: 30,
                        width: 100,

                      ),
                      Container(
                        child: Center(child: Text("قيمه القرض",style: TextStyle(color: Colors.white),)),
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
                          child: Center(child: Text(_payed,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 30,
                          width: MediaQuery.of(context).size.width,

                        ),
                      ),
                      Container(
                        child: Center(child: Text(_totalinterest2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Flexible(

                        child: Container(
                          child: Center(child: Text("الفايده الشهريه",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 50,
                          width: 100,

                        ),
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
                          width: MediaQuery.of(context).size.width,

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
                          child: Center(child: Text(_period,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

                          color: Colors.green,
                          height: 30,
                          width: MediaQuery.of(context).size.width,

                        ),
                      ),
                      Container(
                        child: Center(child: Text(_firsti,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        color: Colors.blueAccent,
                        height: 30,
                        width: 100,

                      ),
                      Container(
                        child: Center(child: Text(_payed,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
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
                        child: Center(child: Text("المبلغ المدفوع مقدما",style: TextStyle(color: Colors.white),)),
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
                        child: Center(child: Text(_payed,style: TextStyle(color: Colors.white),)),
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
                        child: Center(child: Text("الفرق بين القسط والعائد ( شهري ) ",style: TextStyle(color: Colors.white),)),
                        color: Colors.black,
                        height: 30,
                        width: 200,

                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(

                        child: Container(
                          child: Center(child: Text(_differnce2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 30,
                          width: 120,
                        ),
                      ),

                      Container(
                        child: Center(child: Text("الفرق بين القسط والعائد ( 3 سنوات ) ",style: TextStyle(color: Colors.white),)),
                        color: Colors.black,
                        height: 30,
                        width: 200,

                      ),

                    ],

                  ),
                  SizedBox(height: 15,),
                  Divider(color:Colors.white,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[


                      Container(
                        child: Center(child: Text("اجمالى الفايده خلال 3 سنوات ",style: TextStyle(color: Colors.white),)),
                        color: Colors.black,
                        height: 30,
                        width: 250,

                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Center(child: Text("الاجمالى",style: TextStyle(color: Colors.white),)),
                        color: Colors.teal,
                        height: 60,
                        width: 80,

                      ),
                      Container(
                        child: Center(child: Text("=",style: TextStyle(color: Colors.white),)),
                        color: Colors.red,
                        height: 60,
                        width: 20,

                      ),
                      Flexible(

                        child: Container(
                          child: Center(child: Text("الفرق بين العائد والقسط 3 سنوات",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                          color: Colors.teal,

                          height: 60,
                          width: 130,
                        ),
                      ),

                      Container(
                        child: Center(child: Text(" + ",style: TextStyle(color: Colors.white),)),
                        color: Colors.red,
                        height: 60,
                        width: 20,

                      ),

                      Container(
                        child: Center(child: Text("الشهاده الثانيه ",style: TextStyle(color: Colors.white),)),
                        color: Colors.teal,
                        height: 60,
                        width: 100,

                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Center(child: Text(_totalbenefit,style: TextStyle(color: Colors.white),)),
                        color: Colors.teal,
                        height: 60,
                        width: 80,

                      ),
                      Container(
                        child: Center(child: Text("=",style: TextStyle(color: Colors.white),)),
                        color: Colors.red,
                        height: 60,
                        width: 20,

                      ),
                      Flexible(

                        child: Container(
                          child: Center(child: Text(_differnce2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                          color: Colors.teal,

                          height: 60,
                          width: 130,
                        ),
                      ),

                      Container(
                        child: Center(child: Text(" + ",style: TextStyle(color: Colors.white),)),
                        color: Colors.red,
                        height: 60,
                        width: 20,

                      ),

                      Container(
                        child: Center(child: Text(_payed,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        color: Colors.teal,
                        height: 60,
                        width: 100,

                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(

                        child: Container(
                          child: Center(child: Text(_totalbenefit2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 30,
                          width: 120,
                        ),
                      ),

                      Container(
                        child: Center(child: Text("النسبه السنويه التى حصل عليها العميل",style: TextStyle(color: Colors.white),)),
                        color: Colors.black,
                        height: 30,
                        width: 200,

                      ),

                    ],

                  ),
                  Divider(color:Colors.white,),

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[


                      Container(
                        child: Center(child: Text("سيتم استثمار الفرق بين العائد والقسط ( استثمار طويل الاجل لمده 10 سنوات دون دفع اى مبالغ خلال ال 3 سنوات الاولى   ) ",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
                        color: Colors.blue,
                        height: 50,
                        width: 340,

                      ),

                    ],

                  ),
                  FlatButton(
                    child: Text(
                      'Generate PDF',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  )
                ]

            ) : Container(),



          ),

        ],
      );

  }
  Widget longResultsWidget(longResult) {
    bool canShow = false;
    String _longResult = longResult;

    if (_longResult.length > 0) {
      canShow = true;
    }
    return
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Flexible(

                child: Container(
                  child: Center(child: Text(_expectvalue,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  color: Colors.green,
                  height: 50,
                  width: 100,

                ),
              ),
              Flexible(

                child: Container(
                  child: Center(child: Text("معدل العائد",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  color: Colors.blueAccent,
                  height: 50,
                  width: 100,

                ),
              ),

              Flexible(

                child: Container(
                  child: Center(child: Text("اصل الشهاده",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  color: Colors.red,
                  height: 50,
                  width: 100,

                ),
              ),
              Flexible(

                child: Container(
                  child: Center(child: Text("مسلسل \nالشهاده",style: TextStyle(color: Colors.white),)),
                  color: Colors.black,
                  height: 50,
                  width: 60,

                ),
              ),

            ],

          ),


        ],
      );
  }








}

