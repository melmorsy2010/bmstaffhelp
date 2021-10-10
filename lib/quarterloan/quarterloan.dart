library flutter_loan_calculator;
import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bmstaffhelp/quarterloan/table_model.dart';
import 'package:bmstaffhelp/quarterloan/table.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

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
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,

    ));

    return MaterialApp(

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //set global text theme as fira sans

      ),
      home: PaymentGenerator2(),
    );
  }
}

class PaymentGenerator2 extends StatefulWidget {

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

  const PaymentGenerator2({Key key, this.description, this.backgroundColor, this.tabBarLineColor, this.selectedTabLabelColor, this.unselectedTabLabelColor, this.buttonColor, this.selectedTabBorderColor, this.unselectedTabBorderColor, this.tablePageThemeColor, this.tablePageLabelColor}) : super(key: key);

  @override
  _PaymentGeneratorState createState() => _PaymentGeneratorState();
}

class _PaymentGeneratorState extends State<PaymentGenerator2>
    with SingleTickerProviderStateMixin {



  var _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  bool isSelectedLeft = true;
  TabController _tabController;
  double contSize = 300.0; // Card dynamic yükseklik
  double creditAmount; // Girilen kredi tutarı
  double interest; // Girilen faiz
  int creditTermM; // Girilen vade ihtiyaç
  double bsmv =5.0; // Girilen bsmv default 0.05
  final TextEditingController creditamount = TextEditingController();
  final TextEditingController _tenure = TextEditingController();


  bool _switchValue = true;

  // hesaplama method değişkenleri
  CreditTableModel2 creditTableModel;
  List<CreditTableModel2> creditModelList2 = [];
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

  String _emiResult = "";
  String _totalinterst = "";
  String _totalcost = "";


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

    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Quarter Loan Calculator",style: TextStyle(color: Colors.white),),
      ),

      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [


          Container(
            height: 1000,
            child: Image.asset(
              'assets/add2.jpg', fit: BoxFit.cover, width: MediaQuery
                .of(context)
                .size
                .width,),
          ),

          ListView(
            children: <Widget>[
              SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[


                  ],
                ),


              ),


              Divider(color: Colors.grey,
                thickness: 1,),


              SingleChildScrollView(
                reverse: true,
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),


                child: Card(
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


                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[

                              Flexible(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 5),
                                  child: TextFormField(
                                    style: TextStyle(color: Colors.black),

                                    onTap: () {
                                      _autoValidate = false;
                                    },
                                    decoration: InputDecoration(
                                        hoverColor: Colors.red,
                                        hintText: "ادخل قيمه القرض",
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
                                        hintText: "ادخل معدل الفايده",
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
                                          FontAwesomeIcons.percent,
                                          size: 17,
                                          color: Colors.red,
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey[200]
                                    ),
                                    keyboardType:
                                    TextInputType.number,
                                    onSaved: (input) {
                                      interest =
                                          double.parse(input);
                                    },
                                    validator: (String value) {
                                      return validWarn(value);
                                    },
                                  ),
                                ),
                              ),

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
                                            hintText: " ادخل مده القرض ",
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
                                        "Calculate",
                                        style: GoogleFonts.montserrat(   color: Colors.white,
                                          fontSize: 20,)
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


                              SizedBox(height: 10),


                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),



              )],
          ),

        ],
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
    taxInterest = (interest /100) ;
    temp1 = (taxInterest/4) * pow((1 + (taxInterest/4)), (creditTermM/3));
    temp2 = pow((1 + (taxInterest/4)), (creditTermM/3)) - 1;
print(temp2);
    installment = ((creditAmount) * temp1)/temp2;
    _emiResult = installment.toStringAsFixed(2);
    begining = installment*creditTermM/3;
    total = begining-creditAmount;
    _totalinterst =total.toStringAsFixed(2);
    _totalcost=begining.toStringAsFixed(2);

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
                        child: Text(_emiResult,
                            style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Text("القسط الربع سنوى",
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
      creditTableModel = new CreditTableModel2();
      if (row == 1) {
        creditTableModel.begining =creditAmount;
        creditTableModel.installment = installment;
        creditTableModel.interest = (creditAmount * interest/100) / 12;

        creditTableModel.mainCurrency = installment - (creditTableModel.interest );


        mainRemainingMoney = creditAmount - creditTableModel.mainCurrency;
        creditTableModel.bsmv =mainRemainingMoney* bsmv/100 ;
        creditTableModel.kkdf = (mainRemainingMoney + creditTableModel.bsmv);
        creditTableModel.totalcost = creditTableModel.kkdf+installment;
        creditTableModel.mainRemainingMoney = mainRemainingMoney;
        flatrate= (total*12)/(creditAmount*creditTermM)*100;
        creditTableModel.totalinstallment = creditTableModel.installment*row;
        creditTableModel.totalcoost = creditTableModel.kkdf+creditTableModel.totalinstallment;
        creditModelList2.add(creditTableModel);
      } else {
        creditTableModel.begining =creditAmount;

        creditTableModel.installment = installment;

        creditTableModel.interest = ( mainRemainingMoney* interest/100) / 12;


        creditTableModel.mainCurrency = installment -
            (creditTableModel.interest);

        mainRemainingMoney = mainRemainingMoney - creditTableModel.mainCurrency;
        creditTableModel.bsmv = mainRemainingMoney*bsmv/100 ;

        creditTableModel.kkdf = mainRemainingMoney + creditTableModel.bsmv;

        creditTableModel.mainRemainingMoney = mainRemainingMoney;
        creditTableModel.totalinstallment=creditTableModel.installment*row;
        creditTableModel.totalcoost = creditTableModel.kkdf+creditTableModel.totalinstallment;

        creditModelList2.add(creditTableModel);
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

