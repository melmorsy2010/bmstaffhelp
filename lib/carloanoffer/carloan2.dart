import 'dart:math';
import 'dart:ui';

import 'package:admob_flutter/admob_flutter.dart';
import 'package:bmstaffhelp/ADS/adsmanager.dart';
import 'package:bmstaffhelp/creditcardoffers/light_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bmstaffhelp/newcashloans/report1.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Carloan.dart';
class Carloans extends StatefulWidget {
  @override
  _CashState createState() => new _CashState();
}

class _CashState extends State<Carloans> with SingleTickerProviderStateMixin {
  bool _isChecked = false;
  final key = GlobalKey();
  String textdata = 'androidride.com';
  final textcontroller = TextEditingController();
  String qrmessage = "";
  final TextEditingController _clientname = TextEditingController();
  final TextEditingController _staffname = TextEditingController();
  final TextEditingController _mobilenumb= TextEditingController();
  final TextEditingController _carprice= TextEditingController();
  final TextEditingController _carname= TextEditingController();

  final TextEditingController _principalAmount = TextEditingController();
  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();
  final TextEditingController _income = TextEditingController();
  final TextEditingController _other = TextEditingController();
  final _nativeAdController = NativeAdmobController();




  AdmobInterstitial interstitialAd;
  String dropdownvaluee = 'Fiat Tipo';
  var iitems = [
    'Fiat Tipo',
    'kia sportage',
    'kia cerato',
    'other',

  ];
  List _tenureTypes = ['شهر', 'سنوات'];
  String _tenureType = "سنوات";
  double bsmv = 13.75;
  double bsmv2 = 14;

  bool _switchValue = true;
  DateTime _value = DateTime.now();
  String dropdownvalue2 = 'قطاع حكومي';
  var items2 = [
    'قطاع حكومي',
  ];
  String dropdownvalue = 'اختار البرنامج';
  var items = [
    'اختار البرنامج',
    '1- تعهد جهه العمل تحويل الراتب / القسط والمستحقات قطاع عام',
    '2- تعهد جهه العمل تحويل الراتب / القسط والمستحقات قطاع عام(مستعمل)',
    '3- تعهد جهه العمل تحويل الراتب / القسط والمستحقات قطاع خاص',
    '4- بموجب شهاده اثبات دخل',
    '5- أصحاب الأنشطه التجاريه والصناعيه والمهن الحره',

  ];
  String dropdownvalue3 =     'اختار البرنامج                                  ';
  var items3 = [
  'اختار البرنامج                                  ',
    '1 تعهد جهه العمل تحويل الراتب / القسط والمستحقات قطاع عام',
    '2 تعهد جهه العمل تحويل الراتب / القسط والمستحقات قطاع عام(مستعمل)',
    '3 تعهد جهه العمل تحويل الراتب / القسط والمستحقات قطاع خاص',

  ];
  bool _autoValidate = false;

  // String _age = '';
  DateTime _date = new DateTime.now();
  // DateTime _dategive;
  String duryr = '';
  String duryr3 = '';
  String month = '';
  String aksaa = '';
  String ethbatt = '';
  String carlimit = '';

  String dd = '';
  String yearrs = '';
  String validatorWarning = "برجاء ادخال قيمه للحقل";
  String yearrs2 = '';

  String _emiResult = "";
  String _adminfeess = "";
  String _safy = "";

  String _totalinterest = "";
  String _mokdam = "";

  String _totalamount = "";
  String _p1 = "";
  String _pR = "";
  String _int = "";
  String aksaakest = "";
  String hebaa = "";
  String hebaa2 = "";
  String hebaaa3 = "";
  String faktt = "";
  String fakttt = "";

  String nazmyy = "";
  String nazmyy2 = "";
  String nazmyyy2 = "";

  String nazmyyfixed = "";
  String loanfixed = "";  //fixed loan rate

  //////////////////مدد مختلفه
  String _emiResult1 = "";
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


  String qrnumber = "";
  String qrincome = "";

  String qrbirthdate = "";
  String qraksaa ="";
  String qrloan ="";
  String qrtenure ="";
  String qremi="";
  String qrtenuretype="";


  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime(1970),
        firstDate: new DateTime(1910),
        lastDate: new DateTime.now(),

        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.light().copyWith(
              primaryColor: LightColors.kRed,
              accentColor: Colors.teal,
              colorScheme: ColorScheme.light(primary: LightColors.kRed,),
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary
              ),
            ),

            child: child,
          );
        });
    if (picked != null) setState(() => _value = picked);
  }
  void _handleRemeberme3(bool value) {
    _isChecked = value;
    SharedPreferences.getInstance().then(
          (prefs) {
        prefs.setBool("remember_me2", value);
        prefs.setString('name2', _staffname.text);
        prefs.setString('password2', _mobilenumb.text);

      },
    );
    setState(() {
      _isChecked = value;
    });
  }
  void _calcAge() {
    Duration diffyr = _date.difference(_value);
    setState(() {
      duryr = (diffyr.inDays / 365).floor().toString();
      double duryr2 = double.parse('$duryr');
      String days =
      (diffyr.inDays - (((diffyr.inDays / 365).floor()) * 365)).toString();
      double duryr4 = double.parse('$days');
      double diff2 = duryr4 / 30;
      double diff = duryr2 * 12 + diff2;
      double diff3 = 720 - diff;
      double aksa = 96;
      double ethbat = 84;

      double years = diff3 / 12;
      double years2 = 8;


      double P = double.parse(_income.text);
      double c = double.parse(_other.text);

      double dbr = (P*50/100) - c;
      aksaakest=dbr.toStringAsFixed(2);
      print(dbr);


      month = diff2.toStringAsFixed(1);
      duryr = duryr + " سنوات و " + month + " أشهر ";
      duryr3 = diff3.toStringAsFixed(0);
      aksaa = aksa.toStringAsFixed(0);
      ethbatt = ethbat.toStringAsFixed(0);
double carlimiit = double.parse(_carprice.text)*90/100;
carlimit =carlimiit.toStringAsFixed(0);
      dd = diff.toStringAsFixed(0);
      yearrs = years.toStringAsFixed(0);
      yearrs2 = years2.toStringAsFixed(0);


      print(duryr3);
      double n3 = double.parse(aksaakest.toString());
      double n4 = double.parse(duryr3.toString());
      double n5 = double.parse(aksaa.toString());
      double r = 14.50;
      double r2 = 14;
      double nazmy = 0.0;
      double nazmy1 = 0.0;
      double nazmy2 = 0.0;
      double nazmy3 = 0.0;
      double nazmy4 = 0.0;
      double nazmy5 = 0.0;
      double nazmy6 = 0.0;

      nazmy = (r/12/100);
      nazmy1 = (1+nazmy);
      nazmy2 = pow(nazmy1,n4 );
      nazmy3 = (1/nazmy2) ;
      nazmy4 = (1-nazmy3);
      nazmy5 = (nazmy4 /nazmy);
      nazmy6= (n3*nazmy5) ;

      print("ggg++++/$nazmy6");
      nazmyy2 = nazmy6.toStringAsFixed(2);



      /////////13.75////////////////////
      ////////////////////
      double heba = 0.0;
      double heba1 = 0.0;
      double heba2 = 0.0;
      double heba3 = 0.0;
      double heba4 = 0.0;
      double heba5 = 0.0;
      double heba6 = 0.0;

      heba = (r/12/100);
      heba1 = (1+heba);
      heba2 = pow(heba1,n5 );
      heba3 = (1/heba2) ;
      heba4 = (1-heba3);
      heba5 = (heba4 /heba);
      heba6= (n3*heba5) ;
      hebaa2 = heba6.toStringAsFixed(0) ;

      print("ahmed+/$heba6");
      /////////14////////////////////
      ////////////////////
      double hebaa = 0.0;
      double hebaa1 = 0.0;
      double hebaaa2 = 0.0;
      double hebaa3 = 0.0;
      double hebaa4 = 0.0;
      double hebaa5 = 0.0;
      double hebaa6 = 0.0;

      hebaa = (r2/12/100);
      hebaa1 = (1+hebaa);
      hebaaa2 = pow(hebaa1,n5 );
      hebaa3 = (1/hebaaa2) ;
      hebaa4 = (1-hebaa3);
      hebaa5 = (hebaa4 /hebaa);
      hebaa6= (n3*hebaa5) ;
      hebaaa3 = hebaa6.toStringAsFixed(2) ;

      print("gsssg+/$heba6");

      double nnazmy = 0.0;
      double nnazmy1 = 0.0;
      double nnazmy2 = 0.0;
      double nnazmy3 = 0.0;
      double nnazmy4 = 0.0;
      double nnazmy5 = 0.0;
      double nnazmy6 = 0.0;

      nnazmy = (r/12/100);
      nnazmy1 = (1+nnazmy);
      nnazmy2 = pow(nnazmy1,n4 );
      nnazmy3 = (1/nnazmy2) ;
      nnazmy4 = (1-nnazmy3);
      nnazmy5 = (nnazmy4 /nnazmy);
      nnazmy6= (n3*nnazmy5) ;

      print("ggg++++/$nnazmy6");
      nazmyyy2 = nnazmy6.toStringAsFixed(2);
      /////////14.25////////////////////
      ////////////////////
      double fakt = 0.0;
      double fakt1 = 0.0;
      double fakt2 = 0.0;
      double fakt3 = 0.0;
      double fakt4 = 0.0;
      double fakt5 = 0.0;
      double fakt6 = 0.0;

      fakt = (14.25/12/100);
      fakt1 = (1+fakt);
      fakt2 = pow(fakt1,n5 );
      fakt3 = (1/fakt2) ;
      fakt4 = (1-fakt3);
      fakt5 = (fakt4 /fakt);
      fakt6= (n3*fakt5) ;
      faktt = fakt6.toStringAsFixed(2) ;

      print("gsssg+/$heba6");

      double f = 0.0;
      double f1 = 0.0;
      double f2 = 0.0;
      double f3 = 0.0;
      double f4 = 0.0;
      double f5 = 0.0;
      double f6 = 0.0;

      f = (14.25/12/100);
      f1 = (1+f);
      f2 = pow(f1,n4 );
      f3 = (1/f2) ;
      f4 = (1-f3);
      f5 = (f4 /f);
      f6= (n3*f5) ;

      print("ggg++++/$nnazmy6");
      fakttt = f6.toStringAsFixed(2);
    });
  }

  @override
  void initState() {
    _loadUserEmailPassword4();
    super.initState();

    //Ads
    interstitialAd = AdmobInterstitial(
      adUnitId: AdsManager.interstitialAdUnitId,
      listener: (AdmobAdEvent event, Map<String, dynamic> args) {
        if (event == AdmobAdEvent.closed) interstitialAd.load();
      },
    );

    interstitialAd.load();
    _nativeAdController.reloadAd(forceRefresh: true);
  }
  @override
  void dispose() {
    interstitialAd.dispose();
    _nativeAdController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false

      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                      SizedBox(width: 5,),
                      Container(child: Text("Car Loan Offer",style: GoogleFonts.cairo(color: LightColors.kRed,fontSize: 25,fontWeight: FontWeight.bold),),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50,left: 50),
                  child: Divider(color: LightColors.kRed,thickness: 1.5,),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 15),
                  child: Container(child: Center(child: Text("اختار سياراتك المفضله",style:  GoogleFonts.cairo(color: Colors.black,fontSize: 20,),)),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      width: 250,
                      height: 50,
                      child: Center(
                        child: DropdownButton(
                          dropdownColor: Colors.white,
                          itemHeight: 150.0,
                          focusColor: Colors.black,
                          isExpanded: true,
                          isDense: false,
                          value: dropdownvaluee,
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
                            ),
                          ),
                          items: iitems.map((String iitems) {
                            return DropdownMenuItem(
                                value: iitems,
                                child: Text(
                                  iitems,
                                  style: GoogleFonts.cairo(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ));
                          }).toList(),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownvaluee = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                if(dropdownvaluee.contains("other"))...{
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              controller: _carname,
                              style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),
                              keyboardType: TextInputType.text,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    FontAwesomeIcons.car,color: LightColors.kRed,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "ادخل نوع السياره",
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
                      ),




                    ],

                  ),
                },


                if(dropdownvaluee.contains("Fiat Tipo"))...{
                  GestureDetector(
                      onTap: _launchURL,

                      child:
                      Image.asset(
                        'assets/fiattipo.png',
                        width: 600.0,
                        height: 240.0,
                        fit: BoxFit.cover,
                      )),} else if(dropdownvaluee.contains("kia sportage"))...{
                GestureDetector(
                onTap: _launchURL2,

                child:
                  Image.asset(
                  'assets/kiasportage.png',
                  width: 600.0,
                  height: 240.0,
                  fit: BoxFit.cover,
                ),),}else if(dropdownvaluee.contains("kia cerato"))...{
                GestureDetector(
                onTap: _launchURL3,

                child:
                  Image.asset(
                  'assets/cerato.jpg',
                  width: 600.0,
                  height: 240.0,
                  fit: BoxFit.cover,
                ),)}else if(dropdownvaluee.contains("other"))...{ Image.asset(
                  'assets/other.png',
                  width: 500.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),},
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 15),
                  child: Container(child: Center(child: Text("اضغط علي صوره السياره علشان تشوف تفاصيل أكتر عنها",style:  GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),)),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child:   Divider(color: LightColors.kRed,thickness: 1.5,),
                ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        width: 300,
                        height: 70,
                        child: Center(

                            child: DropdownButton<String>(
                              dropdownColor: Colors.white,
                              itemHeight: 170.0,
                              focusColor: Colors.black,
                              isExpanded: true,
                              isDense: false,
                              value: dropdownvalue3,
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                ),
                              ),
                              items: items3.map((String items3) {
                                return DropdownMenuItem(
                                    value: items3,
                                    child: Text(
                                      items3,
                                      style: GoogleFonts.cairo(
                                          color: LightColors.kRed,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.right,
                                      textDirection: TextDirection.rtl,
                                    ));
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownvalue3 = newValue;
                                });
                              },
                            ),
                          ),
                        ),

                    ],
                  ),
    if (dropdownvalue3.contains("تعهد"))...{Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
      border: TableBorder.all(

        width: 2,
        color: LightColors.kRed,
      ),
      children: [
      TableRow( children: [
      Column(children:[
      Text('12 شهر',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
      ]),
      Column(children:[
        Text('الحد الادنى مده القرض',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
      ]),

      ]),
      TableRow( children: [
        Column(children:[
          Text('96 شهر',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
        ]),
        Column(children:[
          Text('الحد الاقصي مده القرض',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
        ]),
      ]),
        TableRow( children: [
          Column(children:[
            Text('40000',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
          ]),
          Column(children:[
            Text('الحد الادنى قيمه القرض',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
          ]),

        ]),
        TableRow( children: [
          Column(children:[
            Text(' 1000000',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
          ]),
          Column(children:[
            Text('الحد الافصي قيمه القرض',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
          ]),
        ]),
        TableRow( children: [
          Column(children:[
            Text('90 %',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
          ]),
          Column(children:[
            Text('نسبه التمويل من السياره',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
          ]),

        ]),
        TableRow( children: [
          Column(children:[
            Text(' 14.50 %',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
          ]),
          Column(children:[
            Text('معدل العائد المتناقص',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
          ]),
        ]),
      ],
      ),
    ),}
              else  if (dropdownvalue3.contains("بموجب"))...{Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    border: TableBorder.all(

                      width: 2,
                      color: LightColors.kRed,
                    ),
                    children: [
                      TableRow( children: [
                        Column(children:[
                          Text('12 شهر',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),
                        Column(children:[
                          Text('الحد الادنى مده القرض',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),

                      ]),
                      TableRow( children: [
                        Column(children:[
                          Text('84 شهر',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),
                        Column(children:[
                          Text('الحد الاقصي مده القرض',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),
                      ]),
                      TableRow( children: [
                        Column(children:[
                          Text('40000',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),
                        Column(children:[
                          Text('الحد الادنى قيمه القرض',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),

                      ]),
                      TableRow( children: [
                        Column(children:[
                          Text(' 1000000',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),
                        Column(children:[
                          Text('الحد الافصي قيمه القرض',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),
                      ]),
                      TableRow( children: [
                        Column(children:[
                          Text('80 %',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),
                        Column(children:[
                          Text('نسبه التمويل من السياره',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),

                      ]),
                      TableRow( children: [
                        Column(children:[
                          Text(' 16 %',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),
                        Column(children:[
                          Text('معدل العائد المتناقص',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                        ]),
                      ]),
                    ],
                  ),
                ),}
    ,


                SizedBox(height: 10,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      height: 60,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: new TextField(
                          controller: _clientname,
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
                          controller: _carprice,
                          style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),
                          keyboardType: TextInputType.number,

                          textAlign: TextAlign.right,
                          decoration: InputDecoration(

                              suffixIcon: Icon(
                                FontAwesomeIcons.car,color: LightColors.kRed,
                              ),
                              hoverColor: Colors.red,
                              hintText: "سعر السيارة",
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

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Container(
                          height: 60,
                          width: 170,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: new TextField(
                              controller: _other,
                              style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),
                              keyboardType: TextInputType.number,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    FontAwesomeIcons.info,color: LightColors.kRed,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: "أقساط اخرى",
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

                        Container(
                          height: 60,
                          width: 170,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 7,bottom: 7),
                            child: new TextField(
                              controller: _income,
                              style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),
                              keyboardType: TextInputType.number,

                              textAlign: TextAlign.right,
                              decoration: InputDecoration(

                                  suffixIcon: Icon(
                                    FontAwesomeIcons.moneyBill,color: LightColors.kRed,
                                  ),
                                  hoverColor: Colors.red,
                                  hintText: " الدخل الشهرى",
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




                  ],

                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      new Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 40,
                          width: 170,
                          color: LightColors.kRed,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(

                                  (FontAwesomeIcons.calendarAlt),
                                  color: LightColors.kLightYellow,size: 30,
                                ),
                              ),
                              new RaisedButton(
                                onPressed: _selectDate,
                                child: new Text(_value != null
                                    ? (_value.year.toString()+ " / "  + _value.month.toString()+  " / "  +_value.day.toString())
                                    : "Select your year of birth"),
                                color: LightColors.kRed,

                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("أدخل تاريخ الميلاد ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.cairo(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )
                          /* TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w600,
                                color: Constants.primaryTextColor,
                              ),*/
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),


               new Align(
                  alignment: Alignment.bottomCenter,
                  child: new RaisedButton(
                    onPressed: (){
                      interstitialAd.show();
if(dropdownvalue3.contains("اختار")){
    showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(
            child: Text(
              "برجاء اختيار البرنامج ",
              textAlign: TextAlign.center,
            )),
      );
    });
}
else if( int.parse(_carprice.text)>0){
                      _calcAge();

                    }},
                    // tooltip: 'Increment',
                    child: new Text(

                      "Calculate",
                      style: TextStyle(fontSize: 20),
                    ),
                    color: LightColors.kGreen,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                emiResultsWidget(aksaa),
              ],
            ),
          ],
        ),
      ),

    );
  }

  Widget emiResultsWidget(emiResult) {
    bool canShow = false;
    String _aksaa = aksaa;

    if (aksaa.length > 0) {
      canShow = true;
    }
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          child: canShow
              ? Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Align(
                    child: Text(
                      '$duryr',
                      style: GoogleFonts.cairo(
                        color: LightColors.kDarkBlue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  new Align(
                    child: Text(
                      'عمرك الحالى ',
                      style: GoogleFonts.cairo(
                          color: LightColors.kDarkBlue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Align(
                    child: Text(
                      " $duryr3  شهر  ",
                      style: GoogleFonts.cairo(
                        color: LightColors.kDarkBlue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  new Align(
                    child: Text(
                      'أقصى مده بالشهور\n طبقا للسن',
                      style: GoogleFonts.cairo(
                          color: LightColors.kDarkBlue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 if(dropdownvalue3.contains("تعهد"))...{ new Align(
                    child: Text(
                      " $aksaa  شهر  ",
                      style: GoogleFonts.cairo(
                        color: LightColors.kDarkBlue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),}else if(dropdownvalue3.contains("بموجب"))...{ new Align(
                    child: Text(
                      " $ethbatt  شهر  ",
                      style: GoogleFonts.cairo(
                        color: LightColors.kDarkBlue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),},
                  new Align(
                    child: Text(
                      'أقصى مده بالشهور\n طبقا للمنتج',
                      style: GoogleFonts.cairo(
                          color: LightColors.kDarkBlue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("أقصى مده طبقا للمدخلات ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cairo(
                    fontSize: 24,
                    color: Constants.primaryTextColor,
                    fontWeight: FontWeight.w600,
                  )
                /* TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                    color: Constants.primaryTextColor,
                  ),*/
              ),
            ),
            if (int.parse(duryr3.toString()) > 96 &&
                int.parse(dd.toString()) > 252&&dropdownvalue3.contains("تعهد")) ...{
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        width: 120,
                        color: LightColors.kRed,
                        child: Text(
                          "$aksaa شهر ",
                          style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        )),
                  ),
                ],
              ),
            }
           else if (int.parse(duryr3.toString()) > 84 &&
                int.parse(dd.toString()) > 252&&dropdownvalue3.contains("بموجب")) ...{
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        width: 120,
                        color: LightColors.kRed,
                        child: Text(
                          "$ethbatt شهر ",
                          style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        )),
                  ),
                ],
              ),
            }
            else if (int.parse(duryr3.toString()) < 96 &&
                int.parse(duryr3.toString()) > 0 &&
                int.parse(dd.toString()) > 252) ...{
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        width: 120,
                        color: LightColors.kRed,
                        child: Text(
                          "$duryr3 شهر ",
                          style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        )),
                  ),
                ],
              ),
            } else if (int.parse(duryr3.toString()) <= 0 &&
                int.parse(dd.toString()) > 252) ...{
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        width: 120,
                        color: LightColors.kRed,
                        child: Text(
                          "السن لا يسمح",
                          style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        )),
                  ),
                ],
              ),
            } else if (int.parse(dd.toString()) <= 252) ...{
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        width: 120,
                        color: LightColors.kRed,
                        child: Text(
                          "أقل من 21 عام",
                          style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        )),
                  ),
                ],
              ),

            },
            SizedBox(height: 10,),
            Container(
              width: 300,
              height: 100,
              color: LightColors.kRed,
              child: Column(
                children: [
                  Text("أقصي قسط يمكن خصمه",
                      style: GoogleFonts.cairo(fontSize: 20, color: Colors.white,  fontWeight: FontWeight.bold)),
                  Container(
                    child: Text("$aksaakest جم ",
                      style: GoogleFonts.cairo(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                  ),
                ],
              ),
            ),

   Padding(
     padding: const EdgeInsets.all(5.0),
     child: Table(
      border: TableBorder.all(

      width: 2,
      color: LightColors.kRed,
      ),
      children: [
      TableRow( children: [
      Column(children:[
      Text(_carprice.text,style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
      ]),
      Column(children:[
      Text('سعر السياره',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
      ]),

      ]),
      TableRow( children: [
      Column(children:[
      Text(carlimit,style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
      ]),
      Column(children:[
      Text('أقصى تمويل للسيارة',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
      ]),
      ]),
      if (
    int.parse(duryr3.toString()) > 96 &&
    int.parse(dd.toString()) > 252&& dropdownvalue3.contains("تعهد"
      ))...{new TableRow( children: [
      Column(children:[
      Text(hebaa2,style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
      ]),
      Column(children:[
      Text('أقصى مبلغ يمكن العميل الحصول طبقا لصافى الدخل',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
      ]),
//nazmyyy2

      ]),}
       else if (
        int.parse(duryr3.toString()) < 96 &&
            int.parse(dd.toString()) > 252&& dropdownvalue3.contains("تعهد"
        ))...{new TableRow( children: [
          Column(children:[
            Text(nazmyyy2,style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
          ]),
          Column(children:[
            Text('أقصى مبلغ يمكن العميل الحصول طبقا لصافى الدخل',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
          ]),
//nazmyyy2

        ]),},

      ],
      ),
   ),

            SizedBox(
              height: 20,
            ),
            Divider(
              color: LightColors.kRed,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: Container(
                      width: 180,
                      color: LightColors.kDarkBlue,
                      child: Text(
                        "ثانيا : أدخل تفاصيل القرض",
                        style: GoogleFonts.cairo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey[500]))),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.cairo(textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),textAlign: TextAlign.right,
                  controller: _clientname,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "أدخل اسم العميل",
                      hintStyle: TextStyle(
                          color: Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 160,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          onTap: () {
                            _autoValidate = false;
                          },
                          controller: _principalAmount,
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.bold,
                              color: LightColors.kDarkBlue,
                              decoration: TextDecoration.none),
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              hoverColor: Colors.red,
                              hintStyle:
                              TextStyle(color: LightColors.kRed),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: LightColors.kRed),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(0))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: LightColors.kRed),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(0))),
                              fillColor: Colors.grey[200]),
                          keyboardType: TextInputType.number,
                          validator: (String value) {
                            return validWarn(value);
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),




                  Padding(
                    padding:
                    const EdgeInsets.only(top: 0, right: 5, left: 5),
                    child: Text("مبلغ القرض  ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                          fontSize: 17,
                          color: Constants.primaryTextColor,
                          fontWeight: FontWeight.w600,
                        )
                      /* TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600,
                        color: Constants.primaryTextColor,
                      ),*/
                    ),
                  )
                ],
              ),
            ),
            if (int.parse(duryr3.toString()) > 96 &&
                int.parse(dd.toString()) > 252&& dropdownvalue3.contains("تعهد"))...{ Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: Container(
                      width: 180,
                      color: LightColors.kDarkBlue,
                      child: Text(
                        " اقصى مبلغ " + hebaa2 ,
                        style: GoogleFonts.cairo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      )),
                ),
              ],
            ),
            }
            else if (int.parse(duryr3.toString()) > 96 &&
                int.parse(dd.toString()) > 252&& dropdownvalue3.contains("تعهد"))...{ Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: Container(
                      width: 180,
                      color: LightColors.kDarkBlue,
                      child: Text(
                        " اقصى مبلغ " + hebaaa3 ,
                        style: GoogleFonts.cairo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      )),
                ),
              ],
            ),
            }
            else if (int.parse(duryr3.toString()) > 96 &&
                  int.parse(dd.toString()) > 252&& dropdownvalue3.contains("تعهد"))...{ Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        width: 180,
                        color: LightColors.kDarkBlue,
                        child: Text(
                          " اقصى مبلغ " + faktt ,
                          style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        )),
                  ),
                ],
              ),
              }
              else if (int.parse(duryr3.toString()) > 0 &&
                    int.parse(dd.toString()) > 252&&dropdownvalue3.contains("تعهد")) ...{Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8),
                      child: Container(
                          width: 180,
                          color: LightColors.kDarkBlue,
                          child: Text(
                            " اقصى مبلغ " +  nazmyyy2 ,
                            style: GoogleFonts.cairo(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                          )),
                    ),
                  ],
                )}
                else if (int.parse(duryr3.toString()) > 0 &&
                      int.parse(dd.toString()) > 252&&dropdownvalue.contains("تعهد جهه العمل تحويل الراتب / القسط والمستحقات جهات متعاقده")) ...{Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: Container(
                            width: 180,
                            color: LightColors.kDarkBlue,
                            child: Text(
                              " اقصى مبلغ " +  nazmyy2 ,
                              style: GoogleFonts.cairo(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                            )),
                      ),
                    ],
                  )} else if (int.parse(duryr3.toString()) > 0 &&
                      int.parse(dd.toString()) > 252&&dropdownvalue.contains("تعهد جهه العمل تحويل الراتب / القسط فقط")) ...{Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: Container(
                            width: 180,
                            color: LightColors.kDarkBlue,
                            child: Text(
                              " اقصى مبلغ " +  fakttt ,
                              style: GoogleFonts.cairo(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                            )),
                      ),
                    ],
                  )},
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 160,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          controller: _interestRate,
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.bold,
                              color: LightColors.kDarkBlue,
                              decoration: TextDecoration.none),
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              hoverColor: Colors.red,
                              hintStyle:
                              TextStyle(color: LightColors.kRed),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: LightColors.kRed),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(0))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: LightColors.kRed),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(0))),
                              fillColor: Colors.grey[200]),
                          keyboardType: TextInputType.number,

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 0, right: 5, left: 5),
                    child: Text("معدل العائد ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                          fontSize: 17,
                          color: Constants.primaryTextColor,
                          fontWeight: FontWeight.w600,
                        )
                      /* TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600,
                        color: Constants.primaryTextColor,
                      ),*/
                    ),
                  )
                ],
              ),
            ),
            if (dropdownvalue3.contains("تعهد"))...{
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        width: 180,
                        color: LightColors.kDarkBlue,
                        child: Text(
                          "معدل العائد = 14.50 %",
                          style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        )),
                  ),

                ],
              )
            }
            else    if (dropdownvalue.contains("تعهد جهه العمل تحويل الراتب / القسط والمستحقات جهات غير متعاقده"))...{
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        width: 180,
                        color: LightColors.kDarkBlue,
                        child: Text(
                          "معدل العائد = 14 %",
                          style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        )),
                  ),

                ],
              )
            }else    if (dropdownvalue.contains("فقط"))...{
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        width: 180,
                        color: LightColors.kDarkBlue,
                        child: Text(
                          "معدل العائد = 14.25 %",
                          style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        )),
                  ),

                ],
              )
            },
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                      flex: 1,
                      child: Column(children: [
                        Text(_tenureType,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: LightColors.kDarkBlue)),
                        Switch(
                            activeColor: Colors.red,
                            inactiveTrackColor: Colors.grey,
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
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 80,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextField(
                          controller: _tenure,
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.bold,
                              color: LightColors.kDarkBlue,
                              decoration: TextDecoration.none),
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              hoverColor: Colors.red,
                              hintStyle:
                              TextStyle(color: LightColors.kRed),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: LightColors.kRed),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(0))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: LightColors.kRed),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(0))),
                              fillColor: Colors.grey[200]),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 0, right: 5, left: 5),
                    child: Text("مدة القرض ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                          fontSize: 17,
                          color: Constants.primaryTextColor,
                          fontWeight: FontWeight.w600,
                        )
                      /* TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600,
                        color: Constants.primaryTextColor,
                      ),*/
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey[500]))),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.cairo(textStyle: TextStyle(color: Colors.black),),textAlign: TextAlign.right,
                  controller: _staffname,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "أدخل اسم الموظف",
                      hintStyle: TextStyle(
                          color: Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey[500]))),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.cairo(textStyle: TextStyle(color: Colors.black),),textAlign: TextAlign.right,
                  controller: _mobilenumb,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "أدخل رقم تليفونك",
                      hintStyle: TextStyle(
                          color: Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.start, children: [
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
                          onChanged: _handleRemeberme3
                      ),
                    )),
                SizedBox(width: 10.0),
                Text("حفظ بيانات التواصل ",
                    style: GoogleFonts.openSans(color: Color(0xff646464),fontWeight: FontWeight.bold,
                    ))
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: Container(
                      width: 180,
                      child: RaisedButton(
                        color: LightColors.kGreen,
                        onPressed: () {
                          if (_tenureType.contains("شهر") &&
                              int.parse(_tenure.text) >
                                  int.parse(duryr3.toString())) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Center(
                                        child: Text(
                                          "مده القرض المدخله  اكبر من المتاحه $duryr3 شهر ",
                                          textAlign: TextAlign.center,
                                        )),
                                  );
                                });
                          } else if (_tenureType.contains("سنوات") &&
                              int.parse(_tenure.text) >
                                  int.parse(yearrs.toString())) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Center(
                                        child: Text(
                                          "مده القرض المدخله  اكبر من المتاحه $yearrs سنوات ",
                                          textAlign: TextAlign.center,
                                        )),
                                  );
                                });
                          }
                          else if (_tenureType.contains("شهر") &&
                              int.parse(_tenure.text) >
                                  int.parse(_aksaa.toString())) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Center(
                                        child: Text(
                                          "مده القرض المدخله  اكبر من المتاحه $_aksaa شهر ",
                                          textAlign: TextAlign.center,
                                        )),
                                  );
                                });
                          }
                          else if (_tenureType.contains("سنوات") &&
                              int.parse(_tenure.text) >8
                          ) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Center(
                                        child: Text(
                                          "مده القرض المدخله  اكبررر من المتاحه 8 سنوات ",
                                          textAlign: TextAlign.center,
                                        )),
                                  );
                                });
                          }
                          else if (_tenureType.contains("شهر") &&
                              int.parse(_tenure.text) <12
                          ) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Center(
                                        child: Text(
                                          "أقل مده للقرض 12 أشهر",
                                          textAlign: TextAlign.center,
                                        )),
                                  );
                                });
                          }

                          else if (dropdownvalue3.contains("تعهد") &&
                              int.parse(_principalAmount.text) >1000000
                          ) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Center(
                                        child: Text(
                                          "الحد الاقصى للقرض  1000000 جم ",
                                          textAlign: TextAlign.center,
                                        )),
                                  );
                                });
                          }
                          else if (dropdownvalue3.contains("تعهد") &&
                              int.parse(_principalAmount.text) <40000
                          ) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Center(
                                        child: Text(
                                          "الحد الادنى للقرض 40000 جم  ",
                                          textAlign: TextAlign.center,
                                        )),
                                  );
                                });
                          }
                          else if (int.parse(_principalAmount.text) >=
                              0) {
                            interstitialAd.show();

                            _handleCalculation();
                          }
                        },
                        child: Text(
                          "إحسب القرض",
                          style: GoogleFonts.cairo(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ],
            ),
            emiResultsWidget2(_emiResult),
            SizedBox(
              height: 300,
            ),
          ])
              : Container(),
        ),
      ],
    );
  }
  void _loadUserEmailPassword4() async {
    print("Load Email");

    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var _password2 = _prefs.getString("password2") ?? "";
      var _name = _prefs.getString("name") ?? "";

      var _remeberMe2 = _prefs.getBool("remember_me2") ?? false;
      print(_remeberMe2);
      print(_password2);
      if (_remeberMe2) {
        setState(() {
          _isChecked = true;
        });
        _staffname.text = _name ?? "";
        _mobilenumb.text = _password2 ?? "";

      }
    } catch (e)
    {
      print(e);
    }
  }
  void _handleCalculation() {
    //  Amortization
    //  A = Payemtn amount per period
    //  P = Initial Printical (loan amount)
    //  r = interest rate
    //  n = total number of payments or periods
    double P = double.parse(_principalAmount.text);
    double r = double.tryParse(_interestRate.text) / 12 / 100;

    int n = _tenureType == "سنوات"
        ? int.parse(_tenure.text) * 12
        : int.parse(_tenure.text);
    double n3 = double.parse(aksaakest.toString());
    double n4 = double.parse(duryr3.toString());
    double n5 = double.parse(aksaa.toString());

    print(n4);
    print(n3);
    ////////////////////
    double nazmy = 0.0;
    double nazmy1 = 0.0;
    double nazmy2 = 0.0;
    double nazmy3 = 0.0;
    double nazmy4 = 0.0;
    double nazmy5 = 0.0;
    double nazmy6 = 0.0;

    nazmy = (r);
    nazmy1 = (1+nazmy);
    nazmy2 = pow(nazmy1,n4 );
    nazmy3 = (1/nazmy2) ;
    nazmy4 = (1-nazmy3);
    nazmy5 = (nazmy4 /nazmy);
    nazmy6= (n3*nazmy5) ;

    print("ggg+/$nazmy6");
    nazmyy = nazmy6.toStringAsFixed(2);

    double fixednazmy = (((((n3*n4)-nazmy6))*12)/(nazmy6*n4))*100 ;
    nazmyyfixed =fixednazmy.toStringAsFixed(2);
    print(n3);
    print(n4);

    /////////////////////////////
    ////////////////////
    double heba = 0.0;
    double heba1 = 0.0;
    double heba2 = 0.0;
    double heba3 = 0.0;
    double heba4 = 0.0;
    double heba5 = 0.0;
    double heba6 = 0.0;

    heba = (r);
    heba1 = (1+heba);
    heba2 = pow(heba1,n5 );
    heba3 = (1/heba2) ;
    heba4 = (1-heba3);
    heba5 = (heba4 /heba);
    heba6= (n3*heba5) ;
    hebaa = heba6.toStringAsFixed(2);

    print("gsssg+/$heba6");

    /////////////////////////////
    double A = 0.0;
    double T = 0.0;
    double S = 0.0;
    double PR = 0.0;
    double p1 = 0.0;
    double inte = 0.0;



    A = (P * r * pow((1 + r), n) / (pow((1 + r), n) - 1));
    T = ((A * n) - P);
    S = (A * n);
    PR = ((P * r));
    p1 = (A - PR);
    inte = (A - p1);
    double flatrate= (T*12)/(P*n)*100;
    print("fff$A");

    double adminfees = P*1.25/100;
    double saffy = P-adminfees;
    double carr = double.parse(_carprice.text);

    double mokdamm = carr-P;
_mokdam = mokdamm.toStringAsFixed(0);
    _safy = saffy.toStringAsFixed(2);
    _adminfeess=adminfees.toStringAsFixed(2);
    loanfixed = flatrate.toStringAsFixed(2);
    _emiResult = A.toStringAsFixed(2);
    print("fff$_emiResult");

    _totalinterest = T.toStringAsFixed(2);
    _totalamount = S.toStringAsFixed(2);
    _p1 = p1.toStringAsFixed(2);
    _pR = PR.toStringAsFixed(2);
    _int = inte.toStringAsFixed(2);


    //////////////////

    double A11 = 0.0;
    double T11 = 0.0;
    double S11 = 0.0;
    double PR11 = 0.0;
    double p22 = 0.0;
    double inte11 = 0.0;
    double P33 = 0.0;
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

    double n2 = double.parse(aksaakest.toString());

    A11 = (r);
    T11 = (1+A11);
    S11 = pow(T11, 12);
    PR11 = (1/S11) ;
    p22 = (1-PR11);
    inte11 = (p22 /A11);
    P33= (n2*inte11) ;
    print(P33);

    ///////////////////////

    A24 = (r);
    T24 = (1+A24);
    S24 = pow(T24, 24);
    PR24 = (1/S24) ;
    p24 = (1-PR24);
    inte24 = (p24 /A24);
    P245= (n2*inte24) ;
    ///////////////////////

    A36 = (r);
    T36= (1+A36);
    S36 = pow(T36, 36);
    PR36 = (1/S36) ;
    p36 = (1-PR36);
    inte36 = (p36 /A36);
    P365= (n2*inte36) ;
///////////////////////

    A48 = (r);
    T48= (1+A48);
    S48 = pow(T48, 48);
    PR48 = (1/S48) ;
    p48= (1-PR48);
    inte48 = (p48 /A48);
    P485= (n2*inte48) ;
///////////////////////

    A60 = (r);
    T60= (1+A60);
    S60 = pow(T60, 60);
    PR60 = (1/S60) ;
    p60= (1-PR60);
    inte60 = (p60 /A60);
    P605= (n2*inte60) ;
///////////////////////

    A72 = (r);
    T72= (1+A72);
    S72 = pow(T72, 72);
    PR72 = (1/S72) ;
    p72= (1-PR72);
    inte72 = (p72 /A72);
    P725= (n2*inte72) ;
    ///////////////////////

    A84 = (r);
    T84= (1+A84);
    S84 = pow(T84, 84);
    PR84 = (1/S84) ;
    p84= (1-PR84);
    inte84 = (p84 /A84);
    P845= (n2*inte84) ;
    //////////////////////

    A96 = (r);
    T96= (1+A96);
    S96 = pow(T96, 96);
    PR96 = (1/S96) ;
    p96= (1-PR96);
    inte96 = (p96 /A96);
    P965= (n2*inte96) ;
    ///////////////////////

    A120 = (r);
    T120= (1+A120);
    S120 = pow(T120, 120);
    PR120 = (1/S120) ;
    p120= (1-PR120);
    inte120 = (p120 /A120);
    P1205= (n2*inte120) ;
    ///////////////////////


    sss = (((((n2*12)-P33))*12)/(P33*12))*100 ;
    sss24 = (((((n2*24)-P245))*12)/(P245*24))*100 ;
    sss36 = (((((n2*36)-P365))*12)/(P365*36))*100 ;
    sss48 = (((((n2*48)-P485))*12)/(P485*48))*100 ;
    sss60 = (((((n2*60)-P605))*12)/(P605*60))*100 ;
    sss72 = (((((n2*72)-P725))*12)/(P725*72))*100 ;
    sss84 = (((((n2*84)-P845))*12)/(P845*84))*100 ;
    sss96 = (((((n2*96)-P965))*12)/(P965*96))*100 ;
    sss120 = (((((n2*120)-P1205))*12)/(P1205*120))*100 ;


    _emiResult1 = P33.toStringAsFixed(2);
    _emiResult24 = P245.toStringAsFixed(2);
    _emiResult36 = P365.toStringAsFixed(2);
    _emiResult48 = P485.toStringAsFixed(2);
    _emiResult60 = P605.toStringAsFixed(2);
    _emiResult72 = P725.toStringAsFixed(2);
    _emiResult84 = P845.toStringAsFixed(2);
    _emiResult96 = P965.toStringAsFixed(2);
    _emiResult120 = P1205.toStringAsFixed(2);
    _installment = n2.toStringAsFixed(2);
    _fixed24 =sss.toStringAsFixed(2);
    _fixed244 =sss24.toStringAsFixed(2);
    _fixed36 =sss36.toStringAsFixed(2);
    _fixed48 =sss48.toStringAsFixed(2);
    _fixed60 =sss60.toStringAsFixed(2);
    _fixed72 =sss72.toStringAsFixed(2);
    _fixed84 =sss84.toStringAsFixed(2);
    _fixed96 =sss96.toStringAsFixed(2);
    _fixed120 =sss120.toStringAsFixed(2);


    qrnumber =_mobilenumb.text;
    qrbirthdate=_value.year.toString() +"/"+ _value.month.toString() +"/"+_value.day.toString();
    qrincome=_income.text;
    qraksaa = aksaakest;
    qrloan=_principalAmount.text;
    qrtenure=n.toString();
    qremi= _emiResult;
    print(qrtenuretype+"ggg");

    qrmessage = "https://api.whatsapp.com/send?phone=2$qrnumber&text= %D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85%20%D8%B9%D9%84%D9%8A%D9%83%D9%85+%D8%A3%D9%86%D8%A7%20%D8%B5%D8%A7%D9%81%D9%89%20%D8%A7%D9%84%D8%AF%D8%AE%D9%84%20%D8%A7%D9%84%D8%B4%D9%87%D8%B1%D9%89%20$qrincome%D9%88%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE%20%D9%85%D9%8A%D9%84%D8%A7%D8%AF%D9%89$qrbirthdate%D9%88%D8%A3%D9%82%D8%B5%D9%89%20%D9%82%D8%B3%D8%B7%20%D9%8A%D9%85%D9%83%D9%86%20%D8%AE%D8%B5%D9%85%D9%87$qraksaa%D8%AD%D8%B6%D8%B1%D8%AA%D9%83%20%D9%83%D9%86%D8%AA%20%D8%AD%D8%B3%D8%A8%D8%AA%D9%84%D9%89%20%D9%85%D8%A8%D9%84%D8%BA%20$qrloan%D9%84%D9%85%D8%AF%D9%87$qrtenure%D9%88%D8%A7%D9%84%D9%82%D8%B3%D8%B7%20%D8%A7%D9%84%D8%B4%D9%87%D8%B1%D9%89%20$qremi%D8%B9%D8%A7%D9%88%D8%B2%20%D8%A7%D8%AD%D8%B3%D8%A8%20%D9%85%D8%A8%D9%84%D8%BA%20%D8%AA%D8%A7%D9%86%D9%89%20";

    Uri myUri = Uri.parse("$qrmessage");
    print(myUri);

    setState(() {});
  }

  Widget emiResultsWidget2(emiResult) {
    bool canShow = false;
    String _emiResult = emiResult;

    if (_emiResult.length > 0) {
      canShow = true;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: LightColors.kRed,
        margin: EdgeInsets.only(top: 25.0),
        child: canShow
            ? Column(children: [
          Text("القسط الشهرى",
              style: GoogleFonts.cairo(fontSize: 25, color: Colors.white)),
          if( double.parse(_emiResult.toString()) <= double.parse(aksaakest.toString()))...{   Container(
            child: Text("$_emiResult جم ",
              style: GoogleFonts.cairo(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
          ),}
          else  if( double.parse(_emiResult.toString()) > double.parse(aksaakest.toString()))...{   Container(
            child: Text("العبئ لا يسمح",
              style: GoogleFonts.cairo(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
          ),},
          SizedBox(
            height: 15,
          ),
          if( double.parse(_emiResult.toString()) <= double.parse(aksaakest.toString()))...{
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
                            Text("اجمالى القرض + الفوائد",
                                style: GoogleFonts.cairo(
                                    fontSize: 15, color: Colors.white)),
                            Text(
                              _totalamount,
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
                            Text("اجمالى الفايده المدفوعه",
                                style: GoogleFonts.cairo(
                                    fontSize: 15, color: Colors.white)),
                            Text(
                              _totalinterest,
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
            )}else  if( double.parse(_emiResult.toString()) > double.parse(aksaakest.toString()))...{ Container(

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
                          Text("العبئ لا يسمح",
                              style: GoogleFonts.cairo(
                                  fontSize: 15, color: Colors.white)),

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
                          Text("العبئ لا يسمح",
                              style: GoogleFonts.cairo(
                                  fontSize: 15, color: Colors.white)),

                        ],
                      ),
                      padding: EdgeInsets.only(right: 10),
                    ),
                  ],
                )
              ],
            ),
          ),},
          SizedBox(
            height: 1,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: (){

                  return generateAndPrintArabicPdfcar(

                    details:dropdownvalue2,details2:dropdownvalue3,details3:_value.year.toString() +"/"+ _value.month.toString() +"/"+_value.day.toString(),bookNum: duryr,replay: _income.text,date: aksaakest,subject: _clientname.text,mobile: _mobilenumb.text,principle: _principalAmount.text,tenuree: _tenure.text,kest: _emiResult,qr: _staffname.text,carprice: _carprice.text,carname: dropdownvaluee.toString(),carname2: _carname.text,productt:dropdownvalue3.toString(),
                    items:[ if (int.parse(duryr3.toString()) > 96 &&
                        int.parse(dd.toString()) > 252)...{aksaa }else if (int.parse(duryr3.toString()) < 96 &&
                        int.parse(duryr3.toString()) > 0 &&
                        int.parse(dd.toString()) > 252) ...{duryr3} ],

                    itemss:[ if (int.parse(duryr3.toString()) > 96 &&
                        int.parse(dd.toString()) > 252)...{hebaa2 }else if (int.parse(duryr3.toString()) < 96 &&
                        int.parse(duryr3.toString()) > 0 &&
                        int.parse(dd.toString()) > 252) ...{nazmyy} ],
                    itemsss4:[ if (int.parse(duryr3.toString()) < items.toString().length &&int.parse(duryr3.toString()) >= 12 )...{"%$_fixed24" ,_installment,_emiResult1,"12 شهر"}else if (int.parse(aksaa.toString()) <=items.toString().length &&int.parse(duryr3.toString()) >= 12 )...{"%$_fixed24" ,_installment,_emiResult1,"12 شهر"}],
                    itemsss5:[ if (int.parse(duryr3.toString()) < items.toString().length &&int.parse(duryr3.toString()) >= 24 )...{"%$_fixed244" ,_installment,_emiResult24,"24 شهر"}else if (int.parse(aksaa.toString()) <=items.toString().length &&int.parse(duryr3.toString()) >= 24 )...{"%$_fixed244" ,_installment,_emiResult24,"24 شهر"}],
                    itemsss6:[ if (int.parse(duryr3.toString()) < items.toString().length &&int.parse(duryr3.toString()) >= 36 )...{"%$_fixed36" ,_installment,_emiResult36,"36 شهر"}else if (int.parse(aksaa.toString()) <=items.toString().length &&int.parse(duryr3.toString()) >= 36 )...{"%$_fixed36" ,_installment,_emiResult36,"36 شهر"}],
                    itemsss7:[ if (int.parse(duryr3.toString()) < items.toString().length &&int.parse(duryr3.toString()) >= 48 )...{"%$_fixed48" ,_installment,_emiResult48,"48 شهر"}else if (int.parse(aksaa.toString()) <=items.toString().length &&int.parse(duryr3.toString()) >= 48 )...{"%$_fixed48" ,_installment,_emiResult48,"48 شهر"}],
                    itemsss8:[ if (int.parse(duryr3.toString()) < items.toString().length &&int.parse(duryr3.toString()) >= 60 )...{"%$_fixed60" ,_installment,_emiResult60,"60 شهر"}else if (int.parse(aksaa.toString()) <=items.toString().length &&int.parse(duryr3.toString()) >= 60 )...{"%$_fixed60" ,_installment,_emiResult60,"60 شهر"}],
                    itemsss9:[ if (int.parse(duryr3.toString()) < items.toString().length &&int.parse(duryr3.toString()) >= 72 )...{"%$_fixed72" ,_installment,_emiResult72,"72 شهر"}else if (int.parse(aksaa.toString()) <=items.toString().length &&int.parse(duryr3.toString()) >= 72 )...{"%$_fixed72" ,_installment,_emiResult72,"72 شهر"}],
                    itemsss10:[ if (int.parse(duryr3.toString()) < items.toString().length &&int.parse(duryr3.toString()) >= 84 )...{"%$_fixed84" ,_installment,_emiResult84,"84 شهر"}else if (int.parse(aksaa.toString()) <=items.toString().length &&int.parse(duryr3.toString()) >= 84 )...{"%$_fixed84" ,_installment,_emiResult84,"84 شهر"}],
                    itemsss11:[ if (int.parse(duryr3.toString()) < items.toString().length &&int.parse(duryr3.toString()) >= 96 )...{"%$_fixed96" ,_installment,_emiResult96,"96 شهر"}else if (int.parse(aksaa.toString()) <=items.toString().length &&int.parse(duryr3.toString()) >= 96 )...{"%$_fixed96" ,_installment,_emiResult96,"96 شهر"}],
                    itemsss12:[ if (int.parse(duryr3.toString()) < items.toString().length &&int.parse(duryr3.toString()) >= 120 )...{"%$_fixed120" ,_installment,_emiResult120,"120 شهر"}else if (int.parse(aksaa.toString()) <=items.toString().length &&int.parse(duryr3.toString()) >= 120 )...{"%$_fixed120" ,_installment,_emiResult120,"120 شهر"}],
                    itemsss13:[ if (int.parse(duryr3.toString()) < items.toString().length )...{"%$nazmyyfixed" ,_installment,nazmyy,"$duryr3 شهر  - أقصى مده "}],

                    kard:[ _principalAmount.text ],
                    kard2:[ _mokdam ],

                    itemsss44:[ _principalAmount.text + " جم " ,"مبلغ القرض"],
                    itemsss55:[ _tenure.text + " " +  _tenureType  ,"مدة القرض"],
                    itemsss66:[ _emiResult + " جم " ,"القسط الشهرى"],
                    itemsss77:[   " % "+  loanfixed + "  سنويا ","فائده القرض"],
                    itemsss88:[ _totalinterest + " جم " ,"اجمالى الفوائد"],
                    itemsss99:[ _totalamount + " جم " ,"اجمالى القرض + الفوائد "],
                    itemsss100:[ _adminfeess + " جم " ,"المصاريف الاداريه 1.25% "],
                    itemsss111:[ _safy + " جم " ,"ًصافى  مبلغ القرض النهائى "],
                    itemsss122:[ if (int.parse(aksaa.toString()) <= items.toString().length &&int.parse(duryr3.toString()) >= 120 )...{"%$_fixed120" ,_installment,_emiResult120,"120 شهر"}],
                    // itemsss133:[ if (int.parse(aksaa.toString()) < items.toString().length )...{"%$nazmyyfixed" ,_installment,nazmyy,"$duryr3 شهر  - أقصى مده "}],



                  );
                },

                color: LightColors.kDarkBlue,
                child: Text(
                    'طباعه التقرير',
                    style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)
                ),
              ),
            ],
          ),
        //  RepaintBoundary(
         //   key: key,
           // child: Container(
            //  color: Colors.white,
            //  child: QrImage(
             //     size: 300,//size of the QrImage widget.
               //   data: qrmessage//textdata used to create QR code
            //  ),
        //    ),
       //   ),

        ])

            : Container(),
      ),
    );
  }


  String validWarn(String value) {
    if (value.isEmpty || value == null || value == "null") {
      return validatorWarning;
    } else {
      return null;
    }
  }
}

class Constants {
  static const Color primaryTextColor = Color.fromRGBO(38, 50, 98, 1);
  static const Color captionTextColor = Color.fromRGBO(157, 161, 180, 1);
  static const Color primaryColor = Color.fromRGBO(255, 99, 128, 1.0);
}

_launchURL() async {
  const url = 'https://eg.hatla2ee.com/ar/new-car/fiat/tipo';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://eg.hatla2ee.com/ar/new-car/kia/sportage';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://eg.hatla2ee.com/ar/new-car/kia/Grand-Cerato';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}