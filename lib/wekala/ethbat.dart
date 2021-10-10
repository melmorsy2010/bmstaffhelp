import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

import '../drobdownlist.dart';
import '../quarterloan.dart';


class ethbat extends StatefulWidget {
  @override
  _ethbatState createState() => _ethbatState();
}

class _ethbatState extends State<ethbat>
    with TickerProviderStateMixin {
  List _tenureTypes = ['اشهر', 'سنوات'];
  String _tenureType = "سنوات";
  String _emiResult = "";
  String _netincome = "";
  String _principle = "";
  String _period = "";
  String _named = "";
  String _phonne = "";

  bool _switchValue = true;
  final TextEditingController _principalAmount = TextEditingController();
  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();
  final TextEditingController _net = TextEditingController();
  final TextEditingController _percent = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 800;

  final double infoHeight = 364.0;
  AnimationController animationController;
  Animation<double> animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  double opacity4 = 0.0;
  double opacity5 = 0.0;
  double opacity6 = 0.0;
  double opacity7 = 0.0;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }

  Future<void> setData() async {
    animationController.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 500));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 800));
    setState(() {
      opacity3 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 1000));
    setState(() {
      opacity4 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 1100));
    setState(() {
      opacity5 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 1200));
    setState(() {
      opacity6 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 1300));
    setState(() {
      opacity7 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor:Color(0XFF802b40),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[

                  AspectRatio(
                    aspectRatio: 1.2,
                  ),
                ],
              ),
              Positioned(
                top: 90,
                bottom: 200,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: DesignCourseAppTheme.nearlyWhite,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0),

                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0)
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: DesignCourseAppTheme.grey.withOpacity(0.2),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8,),
                    child: SingleChildScrollView(
                      child: Container(
                        constraints: BoxConstraints(
                            minHeight: infoHeight,
                            maxHeight: tempHeight > infoHeight
                                ? tempHeight
                                : infoHeight),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 0.0, left: 18, right: 16),
                              child: Center(

                              ),
                            ),
                            AnimatedOpacity(
                              duration: const Duration(milliseconds: 700),
                              opacity: opacity2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 100.0, left: 18, right: 16),
                                child: Center(
                                  child: Container(
                                      child: Center(child: Text("الموظفين بشهاده إثبات الدخل",style: GoogleFonts.cairo(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                      height: 50,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        color: Color(0XFF802b40),
                                        borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(
                                                3.0)),

                                      )),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AnimatedOpacity(
                                  duration: const Duration(milliseconds: 700),
                                  opacity: opacity2,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Longvalue()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 25.0, left: 0, right: 16),
                                      child: Center(
                                        child: Container(
                                            child: Center(child: Text("احسب اقصى مده",style: GoogleFonts.cairo(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                            height: 50,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              color: Color(0XFF802b40),
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(
                                                      3.0)),

                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                                AnimatedOpacity(
                                  duration: const Duration(milliseconds: 700),
                                  opacity: opacity2,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentGenerator()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 25.0, left: 0, right: 0),
                                      child: Center(
                                        child: Container(
                                            child: Center(child: Text("حاسبه قرض",style: GoogleFonts.cairo(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                            height: 50,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              color: Color(0XFF802b40),
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(
                                                      3.0)),

                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            AnimatedOpacity(
                              duration: const Duration(milliseconds: 500),
                              opacity: opacity1,
                              child: Padding(
                                padding: const EdgeInsets.all(8),

                              ),
                            ),
                            Expanded(
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 500),
                                opacity: opacity2,
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 100,
                right: 110,
                child: ScaleTransition(
                    alignment: Alignment.center,
                    scale: CurvedAnimation(
                        parent: animationController, curve: Curves.fastOutSlowIn),
                    child: FractionalTranslation(
                        translation: Offset(0.0, -0.5),
                        child: Align(
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/kenana.jpg"),
                            radius: 65.0,
                            // maxRadius: 200.0,
                          ),
                          alignment: FractionalOffset(0.5, 0.0),
                        ))
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: SizedBox(
                  width: AppBar().preferredSize.height,
                  height: AppBar().preferredSize.height,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius:
                      BorderRadius.circular(AppBar().preferredSize.height),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: DesignCourseAppTheme.nearlyWhite,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 320),
                child: Column(
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 1000),
                      opacity: opacity3,
                      child: ExpansionTile(
                        collapsedBackgroundColor:  DesignCourseAppTheme.nearlyBlack,

                        leading: Icon(
                          FontAwesomeIcons.firstOrder,size: 40,
                        ),
                        title: Text(
                          "خصائص المنتج",
                          style: GoogleFonts.cairo(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold,),
                        ),

                        subtitle: Text("اضغط للاطلاع على خصائص المنتج", style: GoogleFonts.cairo(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold,)),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 30,),
                        backgroundColor:Color(0XFF802b40),

                        children: <Widget>[
                          Row(
                            textDirection: TextDirection.ltr,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: Container(
                                  child: Center(child: Text("60 شهر",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),textDirection: TextDirection.rtl)),
                                  width: 94,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text("اكبر مده",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 70,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 0,),
                                child: Container(
                                  child: Center(child: Text("  12 شهر ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17, ),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),),
                                  width: 94,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text("اقل مده",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 70,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: Container(
                                  child: Center(child: Text("500000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 94,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text("اقصى \n  مبلغ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 70,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 0,),
                                child: Container(
                                  child: Center(child: Text(" 10000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 94,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text("اقل \nمبلغ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 70,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: Container(
                                  child: Center(child: Text("6 Months",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 94,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text("الحد الادنى لمده الخبره",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 245,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: Container(
                                  child: Center(child: Text("2000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 94,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text("الحد الادنى لصافى الدخل الشهرى  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 245,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: Container(
                                  child: Center(child: Text("% 2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 94,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text("مصاريف \n  اداريه",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 70,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 0,),
                                child: Container(
                                  child: Center(child: Text(" 16",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 94,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text("معدل\nالفايده",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 70,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: Container(
                                  child: Center(child: Text("3027",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ),textDirection: TextDirection.rtl)),
                                  width: 94,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text(" كود \nالمنتج",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 70,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 0,),
                                child: Container(
                                  child: Center(child: Text("لا يوجد",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 94,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text("الاستعاضه",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 70,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: Container(
                                  child: Center(child: Text("65 عام فى نهايه المرابحه",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ),textDirection: TextDirection.rtl,textAlign: TextAlign.center)),
                                  width: 94,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text(" الحد الأقصى \nللسن",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ),textAlign: TextAlign.center,)),
                                  width: 70,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 0,),
                                child: Container(
                                  child: Center(child: Text("21",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 94,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text(" الحد الادنى \nللسن",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ),textAlign: TextAlign.center,)),
                                  width: 70,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: Container(
                                  child: Center(child: Text("5 %",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 94,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text("عموله السداد المعجل",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 245,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: Container(
                                  child: Center(child: Text("90 %",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 94,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: Colors.blueAccent
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Center(child: Text("الحد الاقصى لنسبه التمويل",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                                  width: 245,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(0),

                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),

                    ),
                    SizedBox(height: 5,),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 1000),
                      opacity: opacity4,
                      child: ExpansionTile(
                        collapsedBackgroundColor:  DesignCourseAppTheme.nearlyBlack,

                        leading: Icon(
                          FontAwesomeIcons.firstOrder,size: 40,
                        ),
                        title: Text(
                          "مستندات المرحله الاولى",
                          style: GoogleFonts.cairo(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold,),
                        ),

                        subtitle: Text("اضغط للاطلاع على مستندات المرحله الاولى ", style: GoogleFonts.cairo(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold,),),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 30,),
                        backgroundColor:Color(0XFF802b40),
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "النموذج الموحد لطلب الحصول على المرابحه مستوفى البيانات يلزم وجود تليفون ارضى ( للعميل او جهه العمل او الشخص المرجعى )",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "صوره طبق الأصل من بطاقه الرقم القومى",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "نموذج بيان مستلزمات / خدمات / اغراض مرابحة بالوكالة",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "إيصال مرافق حديث ( كهرباء - غاز - تليفون- مياه ) لا يتعدى اكثر من 3 شهور فى تاريخ المنح لنفس عنوان الاقامه المدون بطلب القرض وفى حاله اختلاف اسم صاحب الايصال يتم تقديم ما يفيد الصله",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "النموذج الطبي للتامين على العميل",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "طلب استعلام ائتمانى I score",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "شهاده بالدخل توضح الدخل الشهرى للعميل تكون صلاحيتها شهرين على الأكثر وفى حاله وجود مكافات او حوافز يتم تقديم ما يفيد ذلك أو ثلاث شرائط مرتب حديثه اصل وصوره معتمده او كشف حساب ",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "نموذج بيانات موظف أو بيان حالة او ما يفيد الحد األدنى لمدة الخبرة ",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                    ),
                    SizedBox(height: 5,),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 1000),
                      opacity: opacity5,
                      child: ExpansionTile(

                        collapsedBackgroundColor:  DesignCourseAppTheme.nearlyBlack,

                        leading: Icon(
                          FontAwesomeIcons.firstOrder,size: 40,
                        ),
                        title: Text(
                          "مستندات المرحله الثانيه",
                          style: GoogleFonts.cairo(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold,),
                        ),

                        subtitle: Text("اضغط للاطلاع على مستندات المرحله الثانيه ",  style: GoogleFonts.cairo(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold,),),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 30,),
                        backgroundColor:Color(0XFF802b40),
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "عقد مرابحه بالوكاله المعتمد",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "نموذج 4 المعدل",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "تقرير الموافقه الائتمانيه ORG ",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "تقرير LN RETAIL NATIONAL",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "تعهد السداد المعجل ",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "اقرار مرابحه بالوكاله ",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "خطاب أو كشف حساب يفيد تحويل المرتب / القسط ",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                  
                                  Container(
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.album,color: Colors.white,),
                                        SizedBox(width: 5,),

                                        Expanded(
                                          child: Text(
                                            "شيكات سنوية مسطرة ومؤرخة + شيك مسطر بإجمالي قيمة االقساط المستحقة  ",
                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                    ),
                    SizedBox(height: 5,),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 1000),
                      opacity: opacity6,
                      child:  ExpansionTile(
                        backgroundColor:Color(0XFF802b40),

                        collapsedBackgroundColor:  DesignCourseAppTheme.nearlyBlack,

                        leading: Icon(
                          FontAwesomeIcons.firstOrder,size: 40,
                        ),
                        title: Text(
                          "احسب القرض",
                          style: GoogleFonts.cairo(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold,),
                        ),

                        subtitle: Text("اضغط لحساب القرض ",  style: GoogleFonts.cairo(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold,),),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 30,),
                        children: <Widget>[
                          Column(
                              children: [

                                Container(
                                  height: 60,
                                  width: 300,
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: new TextFormField(
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.text,
                                      controller: _name,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(

                                        hoverColor: Colors.red,
                                        hintText: "Enter Your name",

                                        hintStyle: TextStyle(color: Colors.white),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.grey),
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(0))),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.grey),
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(15))),

                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: 300,
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: new TextFormField(
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.number,
                                      controller: _phone,

                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(

                                        hoverColor: Colors.red,
                                        hintText: "Enter your phone number",

                                        hintStyle: TextStyle(color: Colors.white),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.grey),
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(0))),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.grey),
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(15))),

                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [

                                  Container(
                                    height: 60,
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: new TextField(
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                        keyboardType: TextInputType.number,
                                        controller: _principalAmount,
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(

                                          hoverColor: Colors.red,
                                          hintText: "قيمه القرض",

                                          hintStyle: TextStyle(color: Colors.white),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.grey),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(0))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.grey),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(15))),

                                          filled: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: new TextField(
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                        keyboardType: TextInputType.number,
                                        controller: _interestRate,

                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(

                                          hoverColor: Colors.red,
                                          hintText: "معدل العائد",

                                          hintStyle: TextStyle(color: Colors.white),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.grey),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(0))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.grey),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(15))),

                                          filled: true,
                                        ),
                                      ),
                                    ),
                                  ),

                                  Row(
                                    children: [
                                      Column(
                                        children: [
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
                                              }),
                                          Text(_tenureType,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Container(
                                        height: 60,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: new TextField(

                                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                            keyboardType: TextInputType.number,
                                            controller: _tenure,

                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(

                                              hoverColor: Colors.red,
                                              hintText: "مده القرض",

                                              hintStyle: TextStyle(color: Colors.white),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide:
                                                  BorderSide(color: Colors.grey),
                                                  borderRadius:
                                                  BorderRadius.all(Radius.circular(0))),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide:
                                                  BorderSide(color: Colors.grey),
                                                  borderRadius:
                                                  BorderRadius.all(Radius.circular(15))),

                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ],
                              ),
                              Container(height: 170,width: 1,
                                color: Colors.white,
                              ),

                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: new TextField(
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                        keyboardType: TextInputType.number,
                                        controller: _net,
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(

                                          hoverColor: Colors.red,
                                          hintText: "صافى الدخل ",

                                          hintStyle: TextStyle(color: Colors.white),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.grey),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(0))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.grey),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(15))),

                                          filled: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: new TextField(
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                        keyboardType: TextInputType.number,
                                        controller: _percent,

                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(

                                          hoverColor: Colors.red,
                                          hintText: "نسبه العبئ",

                                          hintStyle: TextStyle(color: Colors.white),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.grey),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(0))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.grey),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(15))),

                                          filled: true,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)
                                ,
                                borderRadius: BorderRadius.circular(0),color: Colors.transparent,
                                boxShadow: [BoxShadow(
                                    blurRadius: 1,color: Colors.transparent,
                                    spreadRadius: 1,
                                    offset: Offset.zero


                                ),
                                ]

                            ),
                            width: 130,
                            child: FlatButton(

                              onPressed: _topamount4,
                              child: Text("Calculate",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              textColor: Colors.white,
                            ),
                          ),
                          emiResultsWidget(_emiResult)
                        ],
                      ),

                    ),
                    SizedBox(height: 5,),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 1000),
                      opacity: opacity7,
                      child: ExpansionTile(
                        backgroundColor:Color(0XFF802b40),

                        collapsedBackgroundColor:  DesignCourseAppTheme.nearlyBlack,

                        leading: Icon(
                          FontAwesomeIcons.firstOrder,size: 40,
                        ),
                        title: Text(
                            "عرض العميل",
                            style: GoogleFonts.cairo(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold,)
                        ),

                        subtitle: Text("اضغط للاطلاع على عرض العميل",  style: GoogleFonts.cairo(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold,),),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 30,),
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  RepaintBoundary(
                                    key: previewContainer,
                                    child: Container(
                                      color: Color(0XFF802b40),
                                      child: Column(
                                        children: [
                                          Row(
                                            textDirection: TextDirection.rtl,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(width: 5,),

                                              Expanded(
                                                child: Center(
                                                  child: Text(
                                                    "عزيزى العميل: مرفق لسيادتكم العرض الخاص بكم",
                                                    textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                          Divider(color: Colors.grey,),

                                          Row(
                                            textDirection: TextDirection.rtl,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(width: 5,),

                                              Expanded(
                                                child: Text(
                                                  "اولا تفاصيل القرض",
                                                  textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 0),
                                                child: Container(
                                                  child: Center(child: Text(_principle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ),)),
                                                  width: 94,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(0),
                                                      color: Colors.blueAccent
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 10),
                                                child: Container(
                                                  child: Center(child: Text("القرض المطلوب",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ),)),
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius: BorderRadius.circular(0),

                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 0),
                                                child: Container(
                                                  child: Center(child: Text(_period,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ),)),
                                                  width: 94,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(0),
                                                      color: Colors.blueAccent
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 10),
                                                child: Container(
                                                  child: Center(child: Text("مده القرض",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ),)),
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius: BorderRadius.circular(0),

                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 0),
                                                child: Container(
                                                  child: Center(child: Text(_emiResult,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ),)),
                                                  width: 94,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(0),
                                                      color: Colors.blueAccent
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 10),
                                                child: Container(
                                                  child: Center(child: Text("القسط الشهرى",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ),)),
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius: BorderRadius.circular(0),

                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                          Divider(color: Colors.grey,),

                                          Row(
                                            textDirection: TextDirection.rtl,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(width: 5,),

                                              Expanded(
                                                child: Text(
                                                  "ثانيا المستندات المطلوبه",
                                                  textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 16),

                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                textDirection: TextDirection.rtl,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      textDirection: TextDirection.rtl,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Icon(Icons.album,color: Colors.white,),
                                                        SizedBox(width: 5,),

                                                        Expanded(
                                                          child: Text(
                                                            "صوره طبق الأصل من بطاقه الرقم القومى",
                                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                                          ),
                                                        )
                                                      ],
                                                    ),

                                                  ),
                                                  Container(
                                                    child: Row(
                                                      textDirection: TextDirection.rtl,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Icon(Icons.album,color: Colors.white,),
                                                        SizedBox(width: 5,),

                                                        Expanded(
                                                          child: Text(
                                                            "إيصال مرافق حديث ( كهرباء - غاز - تليفون- مياه ) لا يتعدى اكثر من 3 شهور فى تاريخ المنح لنفس عنوان الاقامه المدون بطلب القرض وفى حاله اختلاف اسم صاحب الايصال يتم تقديم ما يفيد الصله",
                                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                                          ),
                                                        )
                                                      ],
                                                    ),

                                                  ),
                                                  Container(
                                                    child: Row(
                                                      textDirection: TextDirection.rtl,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Icon(Icons.album,color: Colors.white,),
                                                        SizedBox(width: 5,),

                                                        Expanded(
                                                          child: Text(
                                                            "شهاده بالدخل توضح الدخل الشهرى للعميل تكون صلاحيتها شهرين على الأكثر وفى حاله وجود مكافات او حوافز يتم تقديم ما يفيد ذلك أو ثلاث شرائط مرتب حديثه اصل وصوره معتمده او كشف حساب ",
                                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                                          ),
                                                        )
                                                      ],
                                                    ),

                                                  ),
                                                  Container(
                                                    child: Row(
                                                      textDirection: TextDirection.rtl,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Icon(Icons.album,color: Colors.white,),
                                                        SizedBox(width: 5,),

                                                        Expanded(
                                                          child: Text(
                                                            "نموذج بيانات موظف أو بيان حالة او ما يفيد الحد األدنى لمدة الخبرة ",
                                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                                          ),
                                                        )
                                                      ],
                                                    ),

                                                  ),
                                                  SizedBox(height: 5,),
                                                  Divider(color: Colors.grey,),

                                                  Row(
                                                    textDirection: TextDirection.rtl,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      SizedBox(width: 5,),
                                                      Expanded(
                                                        child: Text(
                                                          "ثالثا للتواصل",
                                                          textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10,),
                                                  Container(
                                                    child: Row(
                                                      textDirection: TextDirection.rtl,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Icon(Icons.person,color: Colors.white,),
                                                        SizedBox(width: 5,),

                                                        Expanded(
                                                          child: Text(
                                                            _named,
                                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                                          ),
                                                        )
                                                      ],
                                                    ),

                                                  ),
                                                  SizedBox(height: 10,),
                                                  Container(
                                                    child: Row(
                                                      textDirection: TextDirection.rtl,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Icon(Icons.phone,color: Colors.white,),
                                                        SizedBox(width: 5,),

                                                        Expanded(
                                                          child: Text(
                                                            _phonne,
                                                            textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                                          ),
                                                        )
                                                      ],
                                                    ),

                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),

                                  ),

                                  Center(
                                    child: Container(
                                        child: RaisedButton(
                                            child: Text("Share Screenshot!"),
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
                              ),
                            ),
                          )
                        ],
                      ),

                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget getTimeBoxUI(String text1 ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: DesignCourseAppTheme.nearlyWhite,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: DesignCourseAppTheme.grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 7.0, right: 7.0, top: 7.0, bottom: 7.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                  text1,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cairo(color: DesignCourseAppTheme.nearlyBlue,fontSize: 14,fontWeight: FontWeight.bold, letterSpacing: 0.27,)

              ),

            ],
          ),
        ),
      ),
    );
  }
  void _topamount4() {
    double A = 0.0;
    double b = 0.0;
    String name = _name.text;
    double phone = double.parse(_phone.text);

    double s = double.parse(_net.text);
    double t = double.tryParse(_percent.text) / 100;

    double P = double.parse(_principalAmount.text);
    double r = double.tryParse(_interestRate.text) / 12 / 100;
    int n = _tenureType == "سنوات" ? int.parse(_tenure.text) * 12  : int.parse(_tenure.text);

    A = (P * r * pow((1+r), n) / ( pow((1+r),n) -1));
    b = s *t;
    _emiResult = A.toStringAsFixed(2);
    _netincome =b.toStringAsFixed(2);
    _principle= P.toStringAsFixed(2);
    _period = n.toStringAsFixed(0);
    _named=name;
    _phonne =phone.toStringAsFixed(0);
    if (this.mounted) {
      setState(() {

    });
  }}
  Widget emiResultsWidget(emiResult) {
    bool canShow = false;
    String _emiResult = emiResult;

    if (_emiResult.length > 0) {
      canShow = true;
    }
    return
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
          ),
          child: canShow ? Row(
            children: [
              Column(
                children: [
                  Text("القسط الشهرى",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,color: Colors.white
                      )
                  ),
                  Container(
                      child: Text(_emiResult,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,color: Colors.white
                          ))
                  ),
                  SizedBox(height: 15,),

                ],
              ),
              SizedBox(width: 110,),
              Column(
                children: [
                  Text("اقصى قسط",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,color: Colors.white
                      )
                  ),
                  Container(
                      child: Text(_netincome,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,color: Colors.white
                          ))
                  ),
                  SizedBox(height: 15,),

                ],
              ),

            ],
          ): Container(),
        ),

      );

  }

}

class DesignCourseAppTheme {
  DesignCourseAppTheme._();

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFFFFFF);
  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText1: body2,
    bodyText2: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    // h5 -> headline
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    // h6 -> title
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );
}