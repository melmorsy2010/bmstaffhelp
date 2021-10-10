library flutter_loan_calculator;

import 'dart:math';
import 'dart:ui';
import 'package:bmstaffhelp/creditcardoffers/titanuim.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:bmstaffhelp/tabbar credit/table2.dart';
import 'package:bmstaffhelp/tabbar credit/tablemodel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bmstaffhelp/tabbar credit/tablemodelmoshtrait.dart';
import 'package:bmstaffhelp/tabbar credit/tablemoshtraiat.dart';
void main() {
  //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



//change notification bar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

    ));

    return MaterialApp(

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //set global text theme as fira sans

      ),
      home: creditcardinstallment(),
    );
  }
}

class creditcardinstallment extends StatefulWidget {

  final String description;
  final Color backgroundColor;
  final Color tabBarLineColor;
  final Color selectedTabLabelColor;
  final Color unselectedTabLabelColor;
  final Color buttonColor;
  final Color selectedTabBorderColor;
  final Color unselectedTabBorderColor;
  final Color tablePageThemeColor;
  final Color tablePageLabelColor;

  const creditcardinstallment({Key key, this.description, this.backgroundColor, this.tabBarLineColor, this.selectedTabLabelColor, this.unselectedTabLabelColor, this.buttonColor, this.selectedTabBorderColor, this.unselectedTabBorderColor, this.tablePageThemeColor, this.tablePageLabelColor}) : super(key: key);

  @override

  _creditcardinstallmentState createState() => _creditcardinstallmentState();
}

class _creditcardinstallmentState extends State<creditcardinstallment>
    with SingleTickerProviderStateMixin {


  String difference2 = "";



  var _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  bool isSelectedLeft = true;
  TabController _tabController;
  double contSize = 300.0; // Card dynamic yükseklik
  double creditAmount; // Girilen kredi tutarı
  double creditAmount2; // Girilen kredi tutarı

  double omolaa  ; // Girilen faiz
  double omolasahb  ; // Girilen faiz
  double omolaa2  ; // Girilen faiz
  double omolasahb2  ; // Girilen faiz

  double interest =26.0; // Girilen faiz
  double interest2 =20.4; // Girilen faiz

  int creditTermM;
  int creditTermM2; // Girilen vade ihtiyaç
// Girilen vade ihtiyaç
  double bsmv =4.0; // Girilen bsmv default 0.05
  double bsmv2 =4.0; // Girilen bsmv default 0.05

  final TextEditingController creditamount = TextEditingController();
  final TextEditingController creditamount2 = TextEditingController();

  final TextEditingController dayy = TextEditingController();
  final TextEditingController dayy2 = TextEditingController();

  final TextEditingController _tenure = TextEditingController();
  final TextEditingController _tenure2 = TextEditingController();


  bool _switchValue = true;
  bool _switchValue2 = true;

  // hesaplama method değişkenleri
  CreditTableModel3 creditTableModel3;
  List<CreditTableModel3> creditModelList2 = [];
  CreditTableModel4 creditTableModel4;
  List<CreditTableModel4> creditModelList4 = [];

  double taxInterest; // Vergi faizi
  double temp1, temp2; // değişkenler
  double installment; // aylık taksit
  double mainRemainingMoney; // Kalan ana para
  double begining; // aylık taksit
  double total; // aylık taksit
  double totalcost; // aylık taksit
  double flatrate; // aylık taksit
  double totalinstallment; // aylık taksit
  double totalcoost ;
  String description = "حاسبه القرض";
  double taxInterest2; // Vergi faizi
  double temp3, temp4; // değişkenler
  double installment2; // aylık taksit
  double mainRemainingMoney2; // Kalan ana para
  double begining2; // aylık taksit
  double total2; // aylık taksit
  double totalcost2; // aylık taksit
  double flatrate2; // aylık taksit
  double totalinstallment2; // aylık taksit
  double totalcoost2 ;
  String description2 = "حاسبه القرض";
  // todo: for Localization
  String descriptionTitle = "حاسبه القرض";
  String tabFirstTitle = "قرض سكنى";
  String tabSecondTitle = "İhtiyaç Kredisi";
  String creditAmountInputLabelText = "مبلغ القرض";
  String interestInputLabelText = "الفايده";
  String termDropDownText = "Vade";
  String monthText = " month";
  String settingsButtonText = "خيارات متقدمه";
  String bsmvText = "عموله السداد المعجل";
  String kkdfText = "KKDF";
  String firstCalculatorButtonText = "احسب القرض";
  String secondCalculatorButtonText = " Calculate ";
  String validatorWarning = "برجاء ادخال قيمه للحقل";
  String validatorWarning2 = "Lütfen kullanılabilir değer girin!";
  List _tenureTypes = ['Months', 'Years'];
  String _tenureType = "Years";
  // Widget değişkenleri
  String descriptionTitle2 = "حاسبه القرض";
  String tabFirstTitle2 = "قرض سكنى";
  String tabSecondTitle2 = "İhtiyaç Kredisi";
  String creditAmountInputLabelText2 = "مبلغ القرض";
  String interestInputLabelText2 = "الفايده";
  String termDropDownText2 = "Vade";
  String monthText2 = " month";
  String settingsButtonText2 = "خيارات متقدمه";
  String bsmvText2 = "عموله السداد المعجل";
  String kkdfText2 = "KKDF";
  String firstCalculatorButtonText2 = "احسب القرض";
  String secondCalculatorButtonText2 = " Calculate ";
  String validatorWarning3 = "برجاء ادخال قيمه للحقل";
  List _tenureTypes2 = ['Months', 'Years'];
  String _tenureType2 = "Years";
  String _emiResult = "";
  String _totalinterst = "";
  String _totalcost = "";
  String _emiResult2 = "";
  String _emiResult3 = "";
  String _totalinterst3 = "";
  String _totalcost3 = "";


  @override
  void initState() {



    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidate: _autoValidate,
      child: tabBar(),
    );
  }

  Widget tabBar() {

    return DefaultTabController(
      length: 2,

      child: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar:AppBar(

          elevation: 1,
          backgroundColor: Colors.redAccent,
          bottom: TabBar(
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("السحب النقدى",style: GoogleFonts.tajawal(fontWeight: FontWeight.bold,fontSize: 17)),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("المشتريات",style: GoogleFonts.tajawal(fontWeight: FontWeight.bold,fontSize: 17)),
                  ),
                ),

              ]
          ),



          title: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Center(child: Text('تقسيط الكروت الائتمانيه',style: GoogleFonts.tajawal(fontWeight: FontWeight.bold,color: Colors.white),)),
          ),
        ),

        resizeToAvoidBottomInset: false,
        body:

        TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [

                  Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Column(
                          children: <Widget>[

                            RaisedButton(
                              onPressed: _launchURL,
                              color: Colors.redAccent,

                              child:   Container(
                                color: Colors.redAccent,
                                width: 180,
                                height: 50,
                                child: Center(child: Text("قائمه تجار التقسيط",style: GoogleFonts.cairo(fontWeight: FontWeight.bold,fontSize: 17),)),
                              ),
                            ),

                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[

                                  Flexible(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 20, right: 20, top: 5, bottom: 5),
                                      child: TextFormField(
                                        style: TextStyle(color: Colors.black),

                                        onTap: () {
                                          _autoValidate = false;
                                        },
                                        decoration: InputDecoration(
                                            hoverColor: Colors.red,
                                            hintText: "ادخل المبلغ المسحوب حد ادنى 1000جم ",
                                            hintStyle: TextStyle(color: Colors.grey),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Colors.transparent),
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(30))),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Colors.transparent),
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(30))),
                                            prefixIcon: Icon(
                                              FontAwesomeIcons.keyboard,
                                              color: Colors.red,
                                            ),
                                            filled: true,
                                            fillColor: Colors.grey[200]
                                        ),
                                        keyboardType:
                                        TextInputType.number,
                                        onSaved: (input) {
                                          creditAmount =
                                              double.parse(input);
                                        },
                                        validator: (String value) {
                                          return validWarn(value);
                                        },
                                      ),
                                    ),
                                  ),
                                  // Faiz input


                                  Row(
                                    children: [
                                      Flexible(
                                        flex: 3,

                                        child: Container(
                                          width: 300,
                                          padding: EdgeInsets.only(
                                              left: 20, right: 0, top: 5, bottom: 5),
                                          child: TextFormField(
                                            style: TextStyle(color: Colors.black),

                                            onTap: () {
                                              _autoValidate = false;
                                            },
                                            decoration: InputDecoration(
                                                hoverColor: Colors.red,
                                                hintText: "  مده التقسيط ",
                                                hintStyle: TextStyle(color: Colors.grey),
                                                enabledBorder: OutlineInputBorder(
                                                    borderSide:
                                                    BorderSide(color: Colors.transparent),
                                                    borderRadius:
                                                    BorderRadius.all(Radius.circular(30))),
                                                focusedBorder: OutlineInputBorder(
                                                    borderSide:
                                                    BorderSide(color: Colors.transparent),
                                                    borderRadius:
                                                    BorderRadius.all(Radius.circular(30))),
                                                prefixIcon: Icon(
                                                  FontAwesomeIcons.clock,
                                                  color: Colors.red,
                                                ),
                                                filled: true,
                                                fillColor: Colors.grey[200]
                                            ),
                                            keyboardType:
                                            TextInputType.number,
                                            onSaved: (input) {
                                              creditTermM =
                                                  int.parse(input);
                                            },
                                            validator: (String value) {
                                              return validWarn(value);
                                            },
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: Column(children: [
                                            Text(_tenureType,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                            Switch(
                                                activeColor: Colors.red,
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
                                          ]))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Flexible(
                                        flex: 3,

                                        child: Container(
                                          width: 300,
                                          padding: EdgeInsets.only(
                                              left: 20, right: 0, top: 5, bottom: 5),
                                          child: Center(child: Text("مده التقسيط ( 6- 12 -24 -36 ) شهر",style: GoogleFonts.cairo(color: Colors.black45),))
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  // Vade input
                                  Flexible(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: widget.buttonColor ?? Colors.red,
                                        borderRadius: BorderRadius.all(Radius.circular(5.5)),
                                      ),
                                      width: MediaQuery.of(context)
                                          .size
                                          .width,
                                      margin: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: FlatButton(

                                        color: Colors.red,
                                        child: Text(
                                            "احسب القسط الشهرى",
                                            style: GoogleFonts.cairo(   color: Colors.white,
                                              fontSize: 20,fontWeight: FontWeight.bold)
                                        ),
                                        onPressed: () {
                                          //
                                          if (_formKey.currentState
                                              .validate()) {
                                            _formKey.currentState
                                                .save();
                                            _handleCalculation(creditTermM);


                                          } else {
                                            setState(() {
                                              _autoValidate = true;
                                            });
                                          }
                                        },
                                      ),
                                    ),

                                  ),

                                  emiResultsWidget(_emiResult),

                                  SizedBox(height: 5,),

                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 20, right: 20, top: 5, bottom: 5),
                                    child: Directionality(
                                      textDirection: TextDirection.ltr,

                                      child: TextFormField(
                                        style: TextStyle(color: Colors.black),

                                        initialValue: bsmv.toString(),
                                        decoration: InputDecoration(
                                            hoverColor: Colors.red,
                                            alignLabelWithHint: true,
                                            border: OutlineInputBorder(),
                                            hintText: "ادخل عموله السداد المعجل",

                                            labelText: "عموله السداد المعجل",
                                            labelStyle: GoogleFonts.cairo(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                                            hintStyle: TextStyle(color: Colors.grey),


                                            prefixIcon: Icon(
                                              FontAwesomeIcons.coins,
                                              color: Colors.red,
                                            ),
                                            filled: true,
                                            fillColor: Colors.grey[200]
                                        ),
                                        keyboardType:
                                        TextInputType.numberWithOptions(
                                          decimal: true,
                                          signed: false,
                                        ),
                                        onSaved: (input) {
                                          setState(() {
                                            bsmv =
                                                double.parse(input);
                                          });
                                        },
                                        validator: (String value) {
                                          return validWarn(value);
                                        },
                                      ),
                                    ),
                                  ),



                                  Flexible(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: widget.buttonColor ?? Colors.red,
                                        borderRadius: BorderRadius.all(Radius.circular(15)),
                                      ),
                                      width: 200,
                                      margin: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: FlatButton.icon(
                                        icon: Icon(FontAwesomeIcons.table,color: Colors.white,),

                                        label: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              "جدول الاقساط",
                                              style: GoogleFonts.cairo(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)
                                          ),
                                        ),
                                        onPressed: () {
                                          //
                                          if (_formKey.currentState
                                              .validate()) {
                                            _formKey.currentState
                                                .save();
                                            calculators(creditTermM);

                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder:
                                                        (context) =>
                                                        TablePage3(
                                                          creditTableList2:
                                                          creditModelList2,
                                                          creditAmount:
                                                          creditAmount,
                                                          creditTerm:
                                                          creditTermM,
                                                          type:
                                                          _tenureType,
                                                          interest:
                                                          interest,
                                                          flatrate:
                                                          flatrate,
                                                          bsmv:
                                                          bsmv,
                                                          total:
                                                          total,
                                                          begining:
                                                          begining,
                                                          totalinstallment:
                                                          totalinstallment,
                                                          installment:
                                                          installment,
                                                          totalcoost:
                                                          totalcoost,
                                                          themeColor:
                                                          widget.tablePageThemeColor,
                                                          labelColor:
                                                          widget.tablePageLabelColor,
                                                        )));
                                          } else {
                                            setState(() {
                                              _autoValidate = true;
                                            });
                                          }
                                        },
                                      ),
                                    ),

                                  ),
                                  SizedBox(height: 10),
Divider(color: Colors.redAccent,thickness: 5,),

         Text(
            "ملاحظات هامه",
            style: GoogleFonts.cairo(   color: Colors.black45,
                fontSize: 20,fontWeight: FontWeight.bold)
        ),

                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.check_box,
                                        size: 19,
                                        color: ArgonColors.warning,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "يتم تقسيط السحب النقدى من داخل او خارج مصر للحركه او المتبقى منها بحد ادنى 1000 جم ",
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.right,
                                          style: GoogleFonts.cairo(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.check_box,
                                        size: 19,
                                        color: ArgonColors.warning,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "فى حاله تقسيط السحب النقدى يتم رد عموله السحب النقدى بالكامل فى نفس يوم تنفيذ التقسيط ",
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.right,
                                          style: GoogleFonts.cairo(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.check_box,
                                        size: 19,
                                        color: ArgonColors.warning,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "عموله الاستخدام خارج الجمهويه + اى مصاريف للكارت + الغرامات او الفوائد لا يمكن تقسيطها ولا يمكن تقسيط الاقساط ",
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.right,
                                          style: GoogleFonts.cairo(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.check_box,
                                        size: 19,
                                        color: ArgonColors.warning,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "يتم التقسيط لصاحب البطاقه الاصليه فقط وليس لاصحاب البطاقات الاضافيه حتى لو قام بها العميل نفسه من البطاقه الاضافيه ",
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.right,
                                          style: GoogleFonts.cairo(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.check_box,
                                        size: 19,
                                        color: ArgonColors.warning,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "لا يتم الغاء ما تم تقسيطه بل يتم عمل سداد معجل فقط  ",
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.right,
                                          style: GoogleFonts.cairo(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.check_box,
                                        size: 19,
                                        color: ArgonColors.warning,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "يمكن للعميل تحديد عدد اقساط مختلف لكل حركه على حدا  ",
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.right,
                                          style: GoogleFonts.cairo(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.check_box,
                                        size: 19,
                                        color: ArgonColors.warning,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "فى حاله عدم سداد القسط بالكامل يتم احتساب عائد مدين شهرى على الجزء الغير المسدد من القسط + غرامه التاخير ",
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.right,
                                          style: GoogleFonts.cairo(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.check_box,
                                        size: 19,
                                        color: ArgonColors.warning,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "يمكن للعميل تحديد عدد اقساط مختلف لكل حركه على حدا  ",
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.right,
                                          style: GoogleFonts.cairo(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
          ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),





                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [

                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Column(
                        children: <Widget>[

RaisedButton(
  onPressed: _launchURL,
  color: Colors.redAccent,

  child:   Container(
    color: Colors.redAccent,
    width: 180,
    height: 50,
    child: Center(child: Text("قائمه تجار التقسيط",style: GoogleFonts.cairo(fontWeight: FontWeight.bold,fontSize: 17),)),
  ),
),

                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                Flexible(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 20, right: 20, top: 5, bottom: 5),
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.black),

                                      onTap: () {
                                        _autoValidate = false;
                                      },
                                      decoration: InputDecoration(
                                          hoverColor: Colors.red,
                                          hintText: "ادخل مبلغ المشتريات ",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.transparent),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(30))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.transparent),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(30))),
                                          prefixIcon: Icon(
                                            FontAwesomeIcons.keyboard,
                                            color: Colors.red,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[200]
                                      ),
                                      keyboardType:
                                      TextInputType.number,
                                      onSaved: (input) {
                                        creditAmount2 =
                                            double.parse(input);
                                      },
                                      validator: (String value) {
                                        return validWarn(value);
                                      },
                                    ),
                                  ),
                                ),
                                // Faiz input


                                Row(
                                  children: [
                                    Flexible(
                                      flex: 3,

                                      child: Container(
                                        width: 300,
                                        padding: EdgeInsets.only(
                                            left: 20, right: 0, top: 5, bottom: 5),
                                        child: TextFormField(
                                          style: TextStyle(color: Colors.black),

                                          onTap: () {
                                            _autoValidate = false;
                                          },
                                          decoration: InputDecoration(
                                              hoverColor: Colors.red,
                                              hintText: "  مده التقسيط ",
                                              hintStyle: TextStyle(color: Colors.grey),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide:
                                                  BorderSide(color: Colors.transparent),
                                                  borderRadius:
                                                  BorderRadius.all(Radius.circular(30))),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide:
                                                  BorderSide(color: Colors.transparent),
                                                  borderRadius:
                                                  BorderRadius.all(Radius.circular(30))),
                                              prefixIcon: Icon(
                                                FontAwesomeIcons.clock,
                                                color: Colors.red,
                                              ),
                                              filled: true,
                                              fillColor: Colors.grey[200]
                                          ),
                                          keyboardType:
                                          TextInputType.number,
                                          onSaved: (input) {
                                            creditTermM2 =
                                                int.parse(input);
                                          },
                                          validator: (String value) {
                                            return validWarn(value);
                                          },
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                        flex: 1,
                                        child: Column(children: [
                                          Text(_tenureType2,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          Switch(
                                              activeColor: Colors.red,
                                              value: _switchValue2,
                                              onChanged: (bool value) {
                                                print(value);

                                                if (value) {
                                                  _tenureType2 = _tenureTypes[1];
                                                } else {
                                                  _tenureType2 = _tenureTypes[0];
                                                }

                                                setState(() {
                                                  _switchValue2 = value;
                                                });
                                              })
                                        ]))
                                  ],
                                ),

                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 3,

                                      child: Container(
                                          width: 300,
                                          padding: EdgeInsets.only(
                                              left: 20, right: 0, top: 5, bottom: 5),
                                          child: Center(child: Text("مده التقسيط ( 6- 12 -24 -36 ) شهر",style: GoogleFonts.cairo(color: Colors.black45),))
                                      ),
                                    ),

                                  ],
                                ),
                                // Vade input
                                Flexible(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: widget.buttonColor ?? Colors.red,
                                      borderRadius: BorderRadius.all(Radius.circular(5.5)),
                                    ),
                                    width: MediaQuery.of(context)
                                        .size
                                        .width,
                                    margin: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    child: FlatButton(

                                      color: Colors.red,
                                      child: Text(
                                          "احسب القسط الشهرى",
                                          style: GoogleFonts.cairo(   color: Colors.white,
                                              fontSize: 20,fontWeight: FontWeight.bold)
                                      ),
                                      onPressed: () {
                                        //
                                        if (_formKey.currentState
                                            .validate()) {
                                          _formKey.currentState
                                              .save();
                                          _handleCalculation2(creditTermM2);


                                        } else {
                                          setState(() {
                                            _autoValidate = true;
                                          });
                                        }
                                      },
                                    ),
                                  ),

                                ),

                                emiResultsWidget2(_emiResult3),

                                SizedBox(height: 5,),

                                Container(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 5, bottom: 5),
                                  child: Directionality(
                                    textDirection: TextDirection.ltr,

                                    child: TextFormField(
                                      style: TextStyle(color: Colors.black),

                                      initialValue: bsmv2.toString(),
                                      decoration: InputDecoration(
                                          hoverColor: Colors.red,
                                          alignLabelWithHint: true,
                                          border: OutlineInputBorder(),
                                          hintText: "ادخل عموله السداد المعجل",

                                          labelText: "عموله السداد المعجل",
                                          labelStyle: GoogleFonts.cairo(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                                          hintStyle: TextStyle(color: Colors.grey),


                                          prefixIcon: Icon(
                                            FontAwesomeIcons.coins,
                                            color: Colors.red,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[200]
                                      ),
                                      keyboardType:
                                      TextInputType.numberWithOptions(
                                        decimal: true,
                                        signed: false,
                                      ),
                                      onSaved: (input) {
                                        setState(() {
                                          bsmv2 =
                                              double.parse(input);
                                        });
                                      },
                                      validator: (String value) {
                                        return validWarn(value);
                                      },
                                    ),
                                  ),
                                ),



                                Flexible(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: widget.buttonColor ?? Colors.red,
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                    ),
                                    width: 200,
                                    margin: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    child: FlatButton.icon(
                                      icon: Icon(FontAwesomeIcons.table,color: Colors.white,),

                                      label: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            "جدول الاقساط",
                                            style: GoogleFonts.cairo(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)
                                        ),
                                      ),
                                      onPressed: () {
                                        //
                                        if (_formKey.currentState
                                            .validate()) {
                                          _formKey.currentState
                                              .save();
                                          calculators2(creditTermM2);

                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder:
                                                      (context) =>
                                                      TablePage4(
                                                        creditTableList4:
                                                        creditModelList4,
                                                        creditAmount2:
                                                        creditAmount2,
                                                        creditTerm2:
                                                        creditTermM2,
                                                        type2:
                                                        _tenureType2,
                                                        interest2:
                                                        interest2,
                                                        flatrate2:
                                                        flatrate2,
                                                        bsmv2:
                                                        bsmv2,
                                                        total2:
                                                        total2,
                                                        begining2:
                                                        begining2,
                                                        totalinstallment2:
                                                        totalinstallment2,
                                                        installment2:
                                                        installment2,
                                                        totalcoost2:
                                                        totalcoost2,
                                                        themeColor:
                                                        widget.tablePageThemeColor,
                                                        labelColor:
                                                        widget.tablePageLabelColor,
                                                      )));
                                        } else {
                                          setState(() {
                                            _autoValidate = true;
                                          });
                                        }
                                      },
                                    ),
                                  ),

                                ),
                                SizedBox(height: 10),
                                Divider(color: Colors.redAccent,thickness: 5,),
                                Text(
                                    "ملاحظات هامه",
                                    style: GoogleFonts.cairo(   color: Colors.black45,
                                        fontSize: 20,fontWeight: FontWeight.bold)
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.check_box,
                                      size: 19,
                                      color: ArgonColors.warning,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "عموله الاستخدام خارج الجمهويه + اى مصاريف للكارت + الغرامات او الفوائد لا يمكن تقسيطها ولا يمكن تقسيط الاقساط ",
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.cairo(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.check_box,
                                      size: 19,
                                      color: ArgonColors.warning,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "يتم التقسيط لصاحب البطاقه الاصليه فقط وليس لاصحاب البطاقات الاضافيه حتى لو قام بها العميل نفسه من البطاقه الاضافيه ",
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.cairo(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.check_box,
                                      size: 19,
                                      color: ArgonColors.warning,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "لا يتم الغاء ما تم تقسيطه بل يتم عمل سداد معجل فقط  ",
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.cairo(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.check_box,
                                      size: 19,
                                      color: ArgonColors.warning,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "يمكن للعميل تحديد عدد اقساط مختلف لكل حركه على حدا  ",
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.cairo(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.check_box,
                                      size: 19,
                                      color: ArgonColors.warning,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "فى حاله عدم سداد القسط بالكامل يتم احتساب عائد مدين شهرى على الجزء الغير المسدد من القسط + غرامه التاخير ",
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.cairo(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),





                ],
              ),
            ),          ],
        ),


      ),
    );
  }

  void _handleCalculation(int creditTermM) {

    //  Amortization
    //  A = Payemtn amount per period
    //  P = Initial Printical (loan amount)
    //  r = interest rate
    //  n = total number of payments or periods


    creditTermM = _tenureType == "Years"
        ? int.parse(creditTermM.toString()) * 12
        : int.parse(creditTermM.toString());
    taxInterest = (interest /12/100) ;
    temp1 = taxInterest * pow((1 + taxInterest), creditTermM);
    temp2 = pow((1 + taxInterest), creditTermM) - 1;
    installment = (creditAmount * temp1)/temp2;
    _emiResult = installment.toStringAsFixed(2);
    omolaa = (2/100);
    omolasahb = creditAmount*omolaa;
    begining = installment*creditTermM;
    total = begining-creditAmount;
    _totalinterst =total.toStringAsFixed(2);
    _totalcost=begining.toStringAsFixed(2);
_emiResult2 = omolasahb.toStringAsFixed(2);
    setState(() {

    });
  }
  void _handleCalculation2(int creditTermM2) {

    //  Amortization
    //  A = Payemtn amount per period
    //  P = Initial Printical (loan amount)
    //  r = interest rate
    //  n = total number of payments or periods


    creditTermM2 = _tenureType2 == "Years"
        ? int.parse(creditTermM2.toString()) * 12
        : int.parse(creditTermM2.toString());
    taxInterest2 = (interest2 /12/100) ;
    temp3 = taxInterest2 * pow((1 + taxInterest2), creditTermM2);
    temp4 = pow((1 + taxInterest2), creditTermM2) - 1;
    installment2 = (creditAmount2 * temp3)/temp4;
    _emiResult3 = installment2.toStringAsFixed(2);
    omolaa2 = (2/100);
    omolasahb2= creditAmount2*omolaa2;
    begining2 = installment2*creditTermM2;
    total2 = begining2-creditAmount2;
    _totalinterst3 =total2.toStringAsFixed(2);
    _totalcost3=begining2.toStringAsFixed(2);
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
      Container(

        decoration: BoxDecoration(),
        margin: EdgeInsets.only(top: 5.0),
        child: canShow ? Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Container(
                        child: Text(

                            _emiResult2,
                            style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Text(" عموله السحب النقدى ( 2% بحد ادنى 15 جم )",
                        style: GoogleFonts.openSans(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black)

                    ),
                  ),
                ],
              ),

              Divider(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Container(
                        child: Text(_emiResult,
                            style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Text("القسط الشهرى",
                        style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)

                    ),
                  ),
                ],
              ),

              Divider(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Container(
                        child: Text(_totalinterst,
                            style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Text("اجمالى الفايده",
                        style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)

                    ),
                  ),
                ],
              ),
              Divider(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Container(
                        child: Text(_totalcost,
                            style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Text("اجمالى الاصل + الفايده",
                        style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)

                    ),
                  ),
                ],
              ),





            ]
        ) : Container(),



      );

  }
  Widget emiResultsWidget2(emiResult) {

    bool canShow = false;
    String _emiResult = emiResult;

    if( _emiResult.length > 0 ) {
      canShow = true;
    }
    return
      Container(

        decoration: BoxDecoration(),
        margin: EdgeInsets.only(top: 5.0),
        child: canShow ? Column(
            children: [


              Divider(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Container(
                        child: Text(_emiResult3,
                            style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Text("القسط الشهرى",
                        style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)

                    ),
                  ),
                ],
              ),

              Divider(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Container(
                        child: Text(_totalinterst3,
                            style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Text("اجمالى الفايده",
                        style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)

                    ),
                  ),
                ],
              ),
              Divider(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Container(
                        child: Text(_totalcost3,
                            style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Text("اجمالى الاصل + الفايده",
                        style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)

                    ),
                  ),
                ],
              ),





            ]
        ) : Container(),



      );

  }


  calculators(int creditTermM){

    creditTermM = _tenureType == "Years"
        ? int.parse(creditTermM.toString()) * 12
        : int.parse(creditTermM.toString());
    taxInterest = (interest /12/100) ;
    temp1 = taxInterest * pow((1 + taxInterest), creditTermM);
    temp2 = pow((1 + taxInterest), creditTermM) - 1;
    installment = (creditAmount * temp1)/temp2;
    begining = installment*creditTermM;
    total = begining-creditAmount;

    creditModelList2.clear();
    for (int row = 1; row < creditTermM+1; row++) {
      creditTableModel3 = new CreditTableModel3();
      if (row == 1) {
        creditTableModel3.begining =creditAmount;
        creditTableModel3.installment = installment;
        creditTableModel3.interest = (creditAmount * interest/100) / 12;

        creditTableModel3.mainCurrency = installment - (creditTableModel3.interest );


        mainRemainingMoney = creditAmount - creditTableModel3.mainCurrency;
        creditTableModel3.bsmv =mainRemainingMoney* bsmv/100 ;
        creditTableModel3.kkdf = (mainRemainingMoney + creditTableModel3.bsmv);
        creditTableModel3.totalcost = creditTableModel3.kkdf+installment;
        creditTableModel3.mainRemainingMoney = mainRemainingMoney;
        flatrate= (total*12)/(creditAmount*creditTermM)*100;
        creditTableModel3.totalinstallment = creditTableModel3.installment*row;
        creditTableModel3.totalcoost = creditTableModel3.kkdf+creditTableModel3.totalinstallment;
        creditModelList2.add(creditTableModel3);
      } else {
        creditTableModel3.begining =creditAmount;

        creditTableModel3.installment = installment;

        creditTableModel3.interest = ( mainRemainingMoney* interest/100) / 12;


        creditTableModel3.mainCurrency = installment -
            (creditTableModel3.interest);

        mainRemainingMoney = mainRemainingMoney - creditTableModel3.mainCurrency;
        creditTableModel3.bsmv = mainRemainingMoney*bsmv/100 ;

        creditTableModel3.kkdf = mainRemainingMoney + creditTableModel3.bsmv;

        creditTableModel3.mainRemainingMoney = mainRemainingMoney;
        creditTableModel3.totalinstallment=creditTableModel3.installment*row;
        creditTableModel3.totalcoost = creditTableModel3.kkdf+creditTableModel3.totalinstallment;

        creditModelList2.add(creditTableModel3);
      }



    }


  }

  calculators2(int creditTermM2){

    creditTermM2 = _tenureType2 == "Years"
        ? int.parse(creditTermM2.toString()) * 12
        : int.parse(creditTermM2.toString());
    taxInterest2 = (interest2 /12/100) ;
    temp3 = taxInterest2 * pow((1 + taxInterest2), creditTermM2);
    temp4 = pow((1 + taxInterest2), creditTermM2) - 1;
    installment2 = (creditAmount2 * temp3)/temp4;
    begining2 = installment2*creditTermM2;
    total2 = begining2-creditAmount2;

    creditModelList2.clear();
    for (int row = 1; row < creditTermM2+1; row++) {
      creditTableModel4 = new CreditTableModel4();
      if (row == 1) {
        creditTableModel4.begining2 =creditAmount2;
        creditTableModel4.installment2 = installment2;
        creditTableModel4.interest2 = (creditAmount2 * interest2/100) / 12;

        creditTableModel4.mainCurrency2 = installment2 - (creditTableModel4.interest2 );


        mainRemainingMoney2 = creditAmount2 - creditTableModel4.mainCurrency2;
        creditTableModel4.bsmv2 =mainRemainingMoney2* bsmv2/100 ;
        creditTableModel4.kkdf2 = (mainRemainingMoney2 + creditTableModel4.bsmv2);
        creditTableModel4.totalcost2 = creditTableModel4.kkdf2+installment2;
        creditTableModel4.mainRemainingMoney2 = mainRemainingMoney2;
        flatrate2= (total2*12)/(creditAmount2*creditTermM2)*100;
        creditTableModel4.totalinstallment2 = creditTableModel4.installment2*row;
        creditTableModel4.totalcoost2 = creditTableModel4.kkdf2+creditTableModel4.totalinstallment2;
        creditModelList4.add(creditTableModel4);
      } else {
        creditTableModel4.begining2 =creditAmount2;

        creditTableModel4.installment2 = installment2;

        creditTableModel4.interest2 = ( mainRemainingMoney2* interest2/100) / 12;


        creditTableModel4.mainCurrency2 = installment2 -
            (creditTableModel4.interest2);

        mainRemainingMoney2 = mainRemainingMoney2 - creditTableModel4.mainCurrency2;
        creditTableModel4.bsmv2 = mainRemainingMoney2*bsmv2/100 ;

        creditTableModel4.kkdf2 = mainRemainingMoney2 + creditTableModel4.bsmv2;

        creditTableModel4.mainRemainingMoney2 = mainRemainingMoney2;
        creditTableModel4.totalinstallment2=creditTableModel4.installment2*row;
        creditTableModel4.totalcoost2 = creditTableModel4.kkdf2+creditTableModel4.totalinstallment2;

        creditModelList4.add(creditTableModel4);
      }



    }


  }

  String validWarn(String value) {
    if (value.isEmpty || value == null || value == "null") {
      return validatorWarning;
    } else if (double.parse(value) <= 0) {
      return validatorWarning2;
    } else {
      return null;
    }

  }




}

_launchURL() async {
  const url = 'https://www.banquemisr.com/ar/smes/cards/Documents/%D8%AA%D8%AC%D8%A7%D8%B1%20%D8%A7%D9%84%D8%AA%D9%82%D8%B3%D9%8A%D8%B7%2005042017.pdf?csrt=3624335392976234842';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}