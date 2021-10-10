import 'dart:math';
import 'package:bmstaffhelp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
class Customeroffer3 extends StatefulWidget {
  @override
  _Customeroffer3State createState() => _Customeroffer3State();
}

class _Customeroffer3State extends State<Customeroffer3> {
  List _tenureTypes = ['اشهر', 'سنوات'];
  String _tenureType = "سنوات";
  String _emiResult = "";
  String _loanamount = "";
  String _fixed = "";
  String _differnce = "";
  String _customerearn = "";
  String _payed = "";
  String _remaindayes = "";
  String _expectvalue = "";
  String _expectvalue2 = "";

  String _rone = "";
  String _maksb = "";
  String _dollartodayy = "";

  String _first = "";
  String _firsta = "";
  String _firsti = "";
  String _real = "";
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
  final TextEditingController _dollareftrady = TextEditingController();
  final TextEditingController _dollartoday = TextEditingController();

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
                height: 1300,
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
                          Container(child: Text("USD OFFER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                        ],
                      ),
                    ),

                    Divider(color: Colors.white,),

                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(child: Text("ادخل تفاصيل الدولار",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
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
                                  hintText: " قيمه الشهاده",
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[



                        Container(
                          height: 60,
                          width: 250,

                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              style: TextStyle(color: Colors.black),
                              controller: _dollareftrady,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.looks_one,
                                    color: Colors.blue,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "ٍسعر الدولار الافتراضى",
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[



                        Container(
                          height: 60,
                          width: 250,

                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              style: TextStyle(color: Colors.black),
                              controller: _dollartoday,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    Icons.looks_one,
                                    color: Colors.blue,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "ٍسعر الدولار الحالى",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Flexible(

                          child: Container(
                            child: Center(child: Text(_expectvalue,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                            color: Colors.white,
                            height: 50,
                            width: 100,

                          ),
                        ),

                        Container(
                          child: Center(child: Text("مجموع مبلغ الشهاده + العائد",style: TextStyle(color: Colors.white),)),
                          color: Colors.blue,
                          height: 50,
                          width: 180,

                        ),

                      ],

                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Flexible(

                          child: Container(
                            child: Center(child: Text(_expectvalue2,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                            color: Colors.white,
                            height: 50,
                            width: 100,

                          ),
                        ),

                        Container(
                          child: Center(child: Text("اجمالى المبلغ الافتراضى",style: TextStyle(color: Colors.white),)),
                          color: Colors.blue,
                          height: 50,
                          width: 180,

                        ),

                      ],

                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Flexible(

                          child: Container(
                            child: Center(child: Text(_dollartodayy,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                            color: Colors.white,
                            height: 50,
                            width: 100,

                          ),
                        ),

                        Container(
                          child: Center(child: Text("اجمالى المبلغ الحالى",style: TextStyle(color: Colors.white),)),
                          color: Colors.blue,
                          height: 50,
                          width: 180,

                        ),

                      ],

                    ),
                    SizedBox(height: 10,),
                    Container(child: Text("حاله تحويل الدولار لمصرى",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
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
                                  hintText: "مبلغ الشهاده",
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

                            emiResultsWidget(_emiResult)


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
    int dollareftrady= int.parse(_dollareftrady.text);
    double dollartoday = double.tryParse(_dollartoday.text);

    ronee = (f1*rone)*36;
    double expect = 0.0;
    double expect3 = 0.0;
    double expect4 = 0.0;

    int expect2 = 0;

    expect = ronee+f1;
    expect3 = expect*dollareftrady;
expect4 =f1*dollartoday ;
    expect2 = expect.round();
    int n =num.parse(expect.toStringAsFixed(0)) ;
    int a= n.round();
    _expectvalue= expect.toStringAsFixed(0);
    _expectvalue2= expect3.toStringAsFixed(0);
_dollartodayy= expect4.toStringAsFixed(0);

    _rone =ronee.toStringAsFixed(0);


        setState(() {

    });
  }



  void _handleCalculation() {
    int p1= int.parse(_principalAmount.text);
    double r= double.tryParse(_interestRate.text) / 12 / 100;
    double r2 =r*12*100;
 double real1 = p1*r*36;
    double total = p1 +real1;

    _real=real1.toStringAsFixed(0);
 _totalinterest2=r2.toStringAsFixed(2);
 _loanamount = p1.toStringAsFixed(0);
 _first =total.toStringAsFixed(0);
    int f2= int.parse(_firstamount.text);
    double f3= double.tryParse(_dollartoday.text);
    double f4=f2*f3;

    _second=f2.toStringAsFixed(0);
_secondi=f3.toStringAsFixed(2);
_third = f4.toStringAsFixed(0);

    int f1= int.parse(_firstamount.text);
    double rone= double.tryParse(_firstinterest.text) / 12 / 100;
    double ronee = 0.0;
    int dollareftrady= int.parse(_dollareftrady.text);
    double dollartoday = double.tryParse(_dollartoday.text);
double tinterest = f1*rone*36;
    ronee = rone*100*12;
    double expect = 0.0;
    double expect3 = 0.0;
    double expect4 = 0.0;

    int expect2 = 0;

    expect = tinterest+f1;
    expect3 = expect*dollareftrady;
    _thirda = ronee.toStringAsFixed(2);
    _thirdi=tinterest.toStringAsFixed(2);
    _firsta = expect.toStringAsFixed(0);
    _firsti = expect3.toStringAsFixed(0);
    _period = dollareftrady.toStringAsFixed(2);
    setState(() {

    });
  }


  Widget emiResultsWidget(emiResult) {

    bool canShow = false;
    String _emiResult = emiResult;

    if( _real.length > 0 ) {
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
              child: Text("مقارنه بين الدولار والمصرى ",textAlign: TextAlign.right,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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
                          child: Center(child: Text("اجمالى العائد 3 سنوات",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 30,
                          width: MediaQuery.of(context).size.width,

                        ),
                      ),
                      Container(
                        child: Center(child: Text("معدل العائد",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        color: Colors.blueAccent,
                        height: 30,
                        width: 100,

                      ),
                      Container(
                        child: Center(child: Text("مبلغ الدولار",style: TextStyle(color: Colors.white),)),
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
                          child: Center(child: Text(_thirdi,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 30,
                          width: MediaQuery.of(context).size.width,

                        ),
                      ),
                      Container(
                        child: Center(child: Text(_thirda,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        color: Colors.blueAccent,
                        height: 30,
                        width: 100,

                      ),
                      Container(
                        child: Center(child: Text(_second,style: TextStyle(color: Colors.white),)),
                        color: Colors.black,
                        height: 30,
                        width: 110,

                      ),

                    ],

                  ),
                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Flexible(

                        child: Container(
                          child: Center(child: Text("اجمالى المبلغ الافتراضى",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 30,
                          width: MediaQuery.of(context).size.width,

                        ),
                      ),
                      Container(
                        child: Center(child: Text(" السعر الافتراضى",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        color: Colors.blueAccent,
                        height: 30,
                        width: 100,

                      ),
                      Container(
                        child: Center(child: Text("اجمالى الاصل + العائد",style: TextStyle(color: Colors.white,fontSize:11),)),
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
                          child: Center(child: Text(_firsti,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 30,
                          width: MediaQuery.of(context).size.width,

                        ),
                      ),
                      Container(
                        child: Center(child: Text(_period,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        color: Colors.blueAccent,
                        height: 30,
                        width: 100,

                      ),
                      Container(
                        child: Center(child: Text(_firsta,style: TextStyle(color: Colors.white),)),
                        color: Colors.black,
                        height: 30,
                        width: 110,

                      ),

                    ],

                  ),
                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Flexible(

                        child: Container(
                          child: Center(child: Text(_firsti,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                          color: Colors.white,
                          height: 50,
                          width: 100,

                        ),
                      ),

                      Container(
                        child: Center(child: Text("اجمالى المبلغ الافتراضى",style: TextStyle(color: Colors.white),)),
                        color: Colors.blue,
                        height: 50,
                        width: 180,

                      ),

                    ],

                  ),
                  Divider(color:Colors.white,),

                  ////////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Flexible(

                        child: Container(
                          child: Center(child: Text("اجمالى المبلغ المحول",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 30,
                          width: MediaQuery.of(context).size.width,

                        ),
                      ),
                      Container(
                        child: Center(child: Text("سعر التحويل",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        color: Colors.blueAccent,
                        height: 30,
                        width: 100,

                      ),
                      Container(
                        child: Center(child: Text("مبلغ الدولار",style: TextStyle(color: Colors.white),)),
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
                          child: Center(child: Text(_third,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 30,
                          width: MediaQuery.of(context).size.width,

                        ),
                      ),
                      Container(
                        child: Center(child: Text(_secondi,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        color: Colors.blueAccent,
                        height: 30,
                        width: 100,

                      ),
                      Container(
                        child: Center(child: Text(_second,style: TextStyle(color: Colors.white),)),
                        color: Colors.black,
                        height: 30,
                        width: 110,

                      ),

                    ],

                  ),
                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Flexible(

                        child: Container(
                          child: Center(child: Text("اجمالى الفوائد",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          color: Colors.green,
                          height: 30,
                          width: MediaQuery.of(context).size.width,

                        ),
                      ),
                      Container(
                        child: Center(child: Text("معدل العائد",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        color: Colors.blueAccent,
                        height: 30,
                        width: 100,

                      ),
                      Container(
                        child: Center(child: Text("مبلغ الشهاده",style: TextStyle(color: Colors.white),)),
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
                          child: Center(child: Text(_real,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Flexible(

                        child: Container(
                          child: Center(child: Text(_first,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                          color: Colors.white,
                          height: 50,
                          width: 100,

                        ),
                      ),

                      Container(
                        child: Center(child: Text("اجمالى الشهاده + الفايده",style: TextStyle(color: Colors.white),)),
                        color: Colors.blue,
                        height: 50,
                        width: 180,

                      ),

                    ],

                  ),
                  SizedBox(height: 10,),




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
