import 'package:bmstaffhelp/sidebar/navigation_bloc.dart';
import 'package:bmstaffhelp/sidebar/sidebar_layout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bmstaffhelp/wekala/employeee.dart';
import 'package:bmstaffhelp/wekala/mhnhora.dart';
import 'package:bmstaffhelp/wekala/ethbat.dart';
import 'package:bmstaffhelp/wekala/bdman.dart';

class CourseInfoScreen extends StatefulWidget with NavigationStates{
  @override
  _CourseInfoScreenState createState() => _CourseInfoScreenState();
}

class _CourseInfoScreenState extends State<CourseInfoScreen>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController animationController;
  Animation<double> animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
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
    if (this.mounted) {
      setState (() {
      opacity1 = 1.0;
    });}
    await Future<dynamic>.delayed(const Duration(milliseconds: 500));
    if (this.mounted) {

      setState(() {
      opacity2 = 1.0;
    });}
    await Future<dynamic>.delayed(const Duration(milliseconds: 800));
    if (this.mounted) {
      setState(() {
      opacity3 = 1.0;
    });}
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
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                      child: Center(child: Text("مرابحه بالوكاله",style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        color: DesignCourseAppTheme.nearlyBlack,
                        borderRadius:
                        BorderRadius.all(
                            Radius.circular(
                                3.0)),

                      )),
                ),
                AspectRatio(
                  aspectRatio: 1.2,
                ),
              ],
            ),
            Positioned(
              top: 90,
              bottom: 30,
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
                                  top: 50.0, left: 18, right: 16),
                              child: Center(
                                child: Container(
                                    child: Center(child: Text("يقوم المنتج على صيغة المرابحة المشمولة بالوكالة لتمويل العملاء تغطية احتياجاتهم النقدية المختلفة لتمويل شراء مستلزمات البناء والتشييد والترميم وتمويل أي مستلزمات منزلية أو شخصية لم تشملها منتجات التجزئة المصرفية الإسلامية الأخرى ",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                    height: 150,
                                    width: 400,
                                    decoration: BoxDecoration(
                                      color: DesignCourseAppTheme.nearlyWhite,
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(
                                              3.0)),

                                    )),
                              ),
                            ),
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
              top: 50,
              right: 35,
              child: ScaleTransition(
                alignment: Alignment.center,
                scale: CurvedAnimation(
                    parent: animationController, curve: Curves.fastOutSlowIn),
                child: Card(
                  color: DesignCourseAppTheme.nearlyBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: Container(
                    width: 60,
                    height: 60,
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                            "assets/kenana.jpg"),
                        radius: 65.0,
                        // maxRadius: 200.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,left: 50),
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SideBarLayout()));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 330),
              child: Column(
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1000),
                    opacity: opacity3,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, bottom: 16, right: 16),
                      child: SizedBox(
                        height: 320,
                        child: GridView.count(
                            primary: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.0,
                                vertical: 10.0),
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=> bdman())
                                  );
                                },
                                child: Container(
                                    child: Center(child: Text("أصحاب الأوعية \nالادخارية",style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: DesignCourseAppTheme.nearlyBlack,
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(
                                              6.0)),

                                    )),
                              ),

                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=> Wekalaemployee())
                                  );
                                },
                                child: Container(
                                    child: Center(child: Text("الموظفين بتعهد جهة العمل",style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0XFF802b40),
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(
                                              6.0)),

                                    )),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=> ethbat())
                                  );
                                },
                                child: Container(
                                    child: Center(child: Text("الموظفين بشهادة إثبات الدخل",style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0XFF802b40),
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(
                                              6.0)),

                                    )),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=> mhnhora())
                                  );
                                },
                                child: Container(
                                    child: Center(child: Text("أصحاب المهن\n الحرة ",style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: DesignCourseAppTheme.nearlyBlack,
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(
                                              6.0)),

                                    )),
                              ),
                            ]),
                    ),
                  ),

                  ),

                ],
              ),
            ),

          ],
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