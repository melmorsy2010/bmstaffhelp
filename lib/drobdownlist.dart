import 'package:flutter/material.dart';
import 'dart:math';
import 'package:bmstaffhelp/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Longvalue extends StatefulWidget {
  @override
  LongvalueState createState() => LongvalueState();
}

class LongvalueState extends State<Longvalue> {

  String _emiResult = "";
  String _emiResult24 = "";
  String _emiResult36 = "";
  String _emiResult48 = "";
  String _emiResult60 = "";
  String _emiResult72 = "";
  String _emiResult84 = "";
  String _emiResult96 = "";
  String _emiResult120 = "";

  String _installment = "";
  String _fixed24 = "";
  String _fixed244 = "";
  String _fixed36 = "";
  String _fixed48 = "";
  String _fixed60 = "";
  String _fixed72 = "";
  String _fixed84 = "";
  String _fixed96 = "";
  String _fixed120 = "";








  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();


  DateTime _dateTime;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              foregroundDecoration: BoxDecoration(color: Colors.black26),
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              child: Image.asset(
                'assets/dark.jpg', fit: BoxFit.cover, width: MediaQuery
                  .of(context)
                  .size
                  .width,),
            ),


            Center(
                child: Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
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
                              SizedBox(width: 70,),
                              Container(child: Text("TOP VALUE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                            ],
                          ),
                        ),

                        Divider(color: Colors.white,),

                        Container(

                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: TextField(
                              style: TextStyle(color: Colors.black),
                              controller: _interestRate,
                              decoration: InputDecoration(
                                  hoverColor: Colors.red,
                                  hintText: "ادخل معدل عائد المنتج",hintStyle: TextStyle(color: Colors.grey),

                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors
                                          .transparent),
                                      borderRadius: BorderRadius.all(Radius
                                          .circular(30))
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors
                                          .transparent),
                                      borderRadius: BorderRadius.all(Radius
                                          .circular(30))
                                  ),
                                  prefixIcon: Icon(
                                    Icons.rate_review, color: Colors.red,),
                                  filled: true,
                                  fillColor: Colors.grey[200]
                              ),
                              keyboardType: TextInputType.number,
                            ),

                        ),


                        Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 6, bottom: 5),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),

                                    textAlign: TextAlign.left,

                                    controller: _tenure,
                                    decoration: InputDecoration(
                                      hoverColor: Colors.red,
                                      hintText: "ادخل صافى الدخل الشهرى للعميل",hintStyle: TextStyle(color: Colors.grey),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))
                                      ),
                                        prefixIcon: Icon(
                                          Icons.rate_review, color: Colors.red,),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))
                                      ),


                                      filled: true,
                                      fillColor: Colors.grey[200],

                                    ),


                                    keyboardType: TextInputType.number,
                                  ),

                                ),


                              ],
                            )

                        ),
                        SizedBox(height: 10,),
                        Flexible(
                            fit: FlexFit.loose,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.red,
                                  boxShadow: [BoxShadow(
                                      blurRadius: 1, color: Colors.red,
                                      spreadRadius: 1,
                                      offset: Offset.zero

                                  )
                                  ]
                              ),
                              width: 300,
                              child: FlatButton(

                                onPressed: _handleCalculation,
                                child: Text("Calculate", style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),),
                                textColor: Colors.white,
                              ),
                            )
                        ),

                        emiResultsWidget(_emiResult)

                      ],
                    )
                )
            )
          ],
        )
    );
  }

  void _handleCalculation() {
    //  Amortization
    //  A = Payemtn amount per period
    //  P = Initial Printical (loan amount)
    //  r = interest rate
    //  n = total number of payments or periods

    double A = 0.0;
    double T = 0.0;
    double S = 0.0;
    double PR = 0.0;
    double p1 = 0.0;
    double inte = 0.0;
    double P2 = 0.0;
//////////////////////////
    double A24 = 0.0;
    double T24 = 0.0;
    double S24 = 0.0;
    double PR24 = 0.0;
    double p24 = 0.0;
    double inte24 = 0.0;
    double P245 = 0.0;
//////////////////////////
    double A36 = 0.0;
    double T36 = 0.0;
    double S36 = 0.0;
    double PR36 = 0.0;
    double p36 = 0.0;
    double inte36 = 0.0;
    double P365 = 0.0;
//////////////////////////
    double A48 = 0.0;
    double T48 = 0.0;
    double S48 = 0.0;
    double PR48 = 0.0;
    double p48 = 0.0;
    double inte48 = 0.0;
    double P485 = 0.0;
    //////////////////////////
    double A60 = 0.0;
    double T60 = 0.0;
    double S60 = 0.0;
    double PR60 = 0.0;
    double p60 = 0.0;
    double inte60 = 0.0;
    double P605 = 0.0;
//////////////////////////
    double A72 = 0.0;
    double T72 = 0.0;
    double S72 = 0.0;
    double PR72 = 0.0;
    double p72 = 0.0;
    double inte72 = 0.0;
    double P725 = 0.0;
    //////////////////////////
    double A84 = 0.0;
    double T84 = 0.0;
    double S84 = 0.0;
    double PR84 = 0.0;
    double p84 = 0.0;
    double inte84 = 0.0;
    double P845 = 0.0;
//////////////////////////
    double A96 = 0.0;
    double T96 = 0.0;
    double S96 = 0.0;
    double PR96 = 0.0;
    double p96 = 0.0;
    double inte96 = 0.0;
    double P965 = 0.0;
    //////////////////////////
    double A120 = 0.0;
    double T120 = 0.0;
    double S120 = 0.0;
    double PR120 = 0.0;
    double p120 = 0.0;
    double inte120 = 0.0;
    double P1205 = 0.0;
//////////////////////////
    double sss =0.0;
    double sss24 =0.0;
    double sss36 =0.0;
    double sss48 =0.0;
    double sss60 =0.0;
    double sss72=0.0;
    double sss84 =0.0;
    double sss96 =0.0;
    double sss120 =0.0;
    double r = double.tryParse(_interestRate.text)  / 100;
    double n = double.parse(_tenure.text)/2;


    A = (r/12);
    T = (1+A);
    S = pow(T, 12);
    PR = (1/S) ;
    p1 = (1-PR);
    inte = (p1 /A);
    P2= (n*inte) ;

    ///////////////////////

    A24 = (r/12);
    T24 = (1+A24);
    S24 = pow(T24, 24);
    PR24 = (1/S24) ;
    p24 = (1-PR24);
    inte24 = (p24 /A24);
    P245= (n*inte24) ;
    ///////////////////////

    A36 = (r/12);
    T36= (1+A36);
    S36 = pow(T36, 36);
    PR36 = (1/S36) ;
    p36 = (1-PR36);
    inte36 = (p36 /A36);
    P365= (n*inte36) ;
///////////////////////

    A48 = (r/12);
    T48= (1+A48);
    S48 = pow(T48, 48);
    PR48 = (1/S48) ;
    p48= (1-PR48);
    inte48 = (p48 /A48);
    P485= (n*inte48) ;
///////////////////////

    A60 = (r/12);
    T60= (1+A60);
    S60 = pow(T60, 60);
    PR60 = (1/S60) ;
    p60= (1-PR60);
    inte60 = (p60 /A60);
    P605= (n*inte60) ;
///////////////////////

    A72 = (r/12);
    T72= (1+A72);
    S72 = pow(T72, 72);
    PR72 = (1/S72) ;
    p72= (1-PR72);
    inte72 = (p72 /A72);
    P725= (n*inte72) ;
    ///////////////////////

    A84 = (r/12);
    T84= (1+A84);
    S84 = pow(T84, 84);
    PR84 = (1/S84) ;
    p84= (1-PR84);
    inte84 = (p84 /A84);
    P845= (n*inte84) ;
    //////////////////////

    A96 = (r/12);
    T96= (1+A96);
    S96 = pow(T96, 96);
    PR96 = (1/S96) ;
    p96= (1-PR96);
    inte96 = (p96 /A96);
    P965= (n*inte96) ;
    ///////////////////////

    A120 = (r/12);
    T120= (1+A120);
    S120 = pow(T120, 120);
    PR120 = (1/S120) ;
    p120= (1-PR120);
    inte120 = (p120 /A120);
    P1205= (n*inte120) ;
    ///////////////////////


    sss = (((((n*12)-P2))*12)/(P2*12))*100 ;
    sss24 = (((((n*24)-P245))*12)/(P245*24))*100 ;
    sss36 = (((((n*36)-P365))*12)/(P365*36))*100 ;
    sss48 = (((((n*48)-P485))*12)/(P485*48))*100 ;
    sss60 = (((((n*60)-P605))*12)/(P605*60))*100 ;
    sss72 = (((((n*72)-P725))*12)/(P725*72))*100 ;
    sss84 = (((((n*84)-P845))*12)/(P845*84))*100 ;
    sss96 = (((((n*96)-P965))*12)/(P965*96))*100 ;
    sss120 = (((((n*120)-P1205))*12)/(P1205*120))*100 ;


    _emiResult = P2.toStringAsFixed(2);
_emiResult24 = P245.toStringAsFixed(2);
    _emiResult36 = P365.toStringAsFixed(2);
    _emiResult48 = P485.toStringAsFixed(2);
    _emiResult60 = P605.toStringAsFixed(2);
    _emiResult72 = P725.toStringAsFixed(2);
    _emiResult84 = P845.toStringAsFixed(2);
    _emiResult96 = P965.toStringAsFixed(2);
    _emiResult120 = P1205.toStringAsFixed(2);
    _installment = n.toStringAsFixed(2);
_fixed24 =sss.toStringAsFixed(2);
    _fixed244 =sss24.toStringAsFixed(2);
    _fixed36 =sss36.toStringAsFixed(2);
    _fixed48 =sss48.toStringAsFixed(2);
    _fixed60 =sss60.toStringAsFixed(2);
    _fixed72 =sss72.toStringAsFixed(2);
    _fixed84 =sss84.toStringAsFixed(2);
    _fixed96 =sss96.toStringAsFixed(2);
    _fixed120 =sss120.toStringAsFixed(2);

    setState(() {

    });
  }


  Widget emiResultsWidget(emiResult) {
    bool canShow = false;
    String _emiResult = emiResult;

    if (_emiResult.length > 0) {
      canShow = true;
    }
    return
      Container(
        margin: EdgeInsets.only(top: 5.0),
        child: canShow ? Column(
            children: [

              Container(
                  child: Text("اقصى قيمه وفقا للمدخلات",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold, color: Colors.white
                      ))
              ),
              SizedBox(height: 5,),
              Table(

                  textDirection: TextDirection.rtl,

                  border: TableBorder.all(color: Colors.white, ),
                  children: [
                    TableRow(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('المده',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text("اقصى مبلغ",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('قسط الشهرى',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('ثابته',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ]),
                    TableRow(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('12 شهر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_emiResult,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_installment
                              ,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
    ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_fixed24,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ]),
                    TableRow(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('24 شهر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_emiResult24,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_installment
                              ,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_fixed244,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ]),
                    TableRow(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('36 شهر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_emiResult36,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_installment
                              ,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_fixed36,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ]),
                    TableRow(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('48 شهر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_emiResult48,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_installment
                              ,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_fixed48,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ]),
                    TableRow(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('60 شهر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_emiResult60,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_installment
                              ,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_fixed60,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ]),
                    TableRow(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('72 شهر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_emiResult72,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_installment
                              ,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_fixed72,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ]),
                    TableRow(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('84 شهر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_emiResult84,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_installment
                              ,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_fixed84,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ]),
                    TableRow(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('96 شهر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_emiResult96,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_installment
                              ,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_fixed96,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ]),
                    TableRow(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('120 شهر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_emiResult120,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_installment
                              ,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(_fixed120,textDirection: TextDirection.rtl,style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ]),
                  ]),
              SizedBox(height: 10,),


            ]
        ):
SizedBox(),

      );
  }

}
