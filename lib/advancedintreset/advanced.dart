import 'dart:math';
import 'package:bmstaffhelp/creditcardoffers/light_colors.dart';
import 'package:bmstaffhelp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../lock.dart';
import 'package:showcaseview/showcaseview.dart';

import 'advancedintreport.dart';
class advancedintrestt extends StatefulWidget {

  @override
  _CustomerofferState createState() => _CustomerofferState();
}

class _CustomerofferState extends State<advancedintrestt> {

  GlobalKey _one = GlobalKey();


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

                             Container(child: Text("Advanced Interest",style: GoogleFonts.cairo(color: LightColors.kRed,fontSize: 25,fontWeight: FontWeight.bold),),)
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(right: 50,left: 50),
                      child: Divider(color: LightColors.kRed,thickness: 1.5,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,right: 15),
                      child: Container(child: Center(child: Text("أدخل تفاصيل الشهادة",style:  GoogleFonts.cairo(color: Colors.black,fontSize: 20,),)),),
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
                                      FontAwesomeIcons.userAlt,color: LightColors.kRed,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Container(
                          height: 60,
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              controller: _firstamount,
                              style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),
                              keyboardType: TextInputType.number,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(

                                      FontAwesomeIcons.moneyCheck,color: LightColors.kRed,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "مبلغ الشهاده",
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



                    SizedBox(height: 2,),



                    Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          children: <Widget>[



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
                                              FontAwesomeIcons.userAlt,color: LightColors.kRed,
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
                                              FontAwesomeIcons.phone,color: LightColors.kRed,
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
                                  _handleCalculation();

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

                            emiResultsWidget(_first)

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
    double cdintreset = (f1*11/100);
    double monthlycdintreset = cdintreset/12;

    double cdtotalinterest = cdintreset*3;
    double advanced = (f1*9/100)*3;
_firsti= monthlycdintreset.toStringAsFixed(0);
    _first = cdintreset.toStringAsFixed(0);
    _totalinterst = cdtotalinterest.toStringAsFixed(0);
_topamount = advanced.toStringAsFixed(0);
_firsta = f1.toStringAsFixed(0);
    print(cdtotalinterest);
    print(advanced);

    ////////////////////////
    double A = 0.0;
    double P = advanced;
    double r = 13 / 12 / 100;
    int n = 36;
    A = (P * r * pow((1+r), n) / ( pow((1+r),n) -1));
    print(A);
   double totalinteret2 = ((A * n) - P );
   double fixed = (totalinteret2*12)/(P*n)*100;
   double adminfees = P*1/100;
double differnce = monthlycdintreset - A;
    double safy = P-adminfees;

    double islamic = (safy*9.75/100)*3;
double islamic2 = islamic + safy;
_differnce =differnce.toStringAsFixed(0);
    _fixed = fixed.toStringAsFixed(2);
    _adminfees = adminfees.toStringAsFixed(2);
_payed =safy.toStringAsFixed(0);
    _emiResult = A.toStringAsFixed(0);
    _loanamount= P.toStringAsFixed(0);
    _tenureType = n.toStringAsFixed(0);
    _totalcd = islamic.toStringAsFixed(0);
    _thirdi = islamic2.toStringAsFixed(0);
/////////////////////////////////////


    setState(() {

    });
  }


  Widget emiResultsWidget(emiResult) {

    bool canShow = false;
    String _first = emiResult;

    if( _first.length > 0 ) {
      canShow = true;
    }
    return
      Column(
        children: [




          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: LightColors.kRed,

              margin: EdgeInsets.only(top: 15.0),
              child: canShow ? Column(
                  children: [

                    Text("العائد المقدم",
                        style: GoogleFonts.cairo(fontSize: 25, color: Colors.white)),

                    Container(
                      child: Text("$_topamount ",
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
                                    Text("القسط الشهرى للقرض",
                                        style: GoogleFonts.cairo(
                                            fontSize: 15, color: Colors.white)),
                                    Text(
                                      _emiResult,
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
                                    Text("العائد الشهرى للشهاده",
                                        style: GoogleFonts.cairo(
                                            fontSize: 15, color: Colors.white)),
                                    Text(
                                      _firsti,
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
                            return generateAndPrintArabicadvanced(details:_customername.text,details2:_staffname.text,details3:_staffnumb.text,bookNum: _payed,replay: _topamount,date:_firstamount.text ,subject: _principalAmount.text,
                              items: [ "$_totalinterst" ,"3"+" "+"سنوات","%"+"11","$_firsta","1"],
                              itemsss4: [ "$_firsti" ,"العائد الشهرى للشهادة"],
                              itemsss5: [ "$_adminfees" ,"%"+"$_fixed","شهر" +"  "+ _tenureType.toString(),"$_loanamount"],
                              itemsss6: [ "$_emiResult" ,"القســــــــــط الشهـــــــرى"],
                              itemsss7: [ "$_differnce"+" "+"جم" ,"الفرق بين العائد الشهرى للشهادات والقسط الشهرى للقرض -للعائد المقدم"],
                              itemsss8: [ "$_totalcd" ,"$_period","%"+"$_firsti","$_loanamount"],

                              itemsss9: [ "الفايده المدفوعه","المده بالشهور","معدل العائد","مبلغ القرض"],
                              itemsss10: [ "$_totalinterest2" ,"$_period","%"+"$_fixed","$_loanamount"],
                              itemsss11: [ "$_totalcd" ,"3 سنوات","%"+"9.75 ","$_payed"],
                              itemsss12: [ "$_thirdi" ,"اجمالى الاستثمار"],
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
