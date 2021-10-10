import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

import '../drobdownlist.dart';
import '../loancalc2.dart';

class secured extends StatefulWidget {


  @override

  _securedState createState() => _securedState();
}

class _securedState extends State<secured> {
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


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Stack(
        children: [

          Container(
            foregroundDecoration: BoxDecoration(color: Colors.black26),
            height: 1600,
            child: Image.asset(
              'assets/dark22.jpg', fit: BoxFit.cover, width: MediaQuery
                .of(context)
                .size
                .width,),
          ),
          SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                    padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              "عملاء البنك اصحاب الاوعيه الادخاريه",textAlign: TextAlign.center,

                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
                          height: 200.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('assets/123.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Longvalue()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.transparent
                                ),
                                width: 120,
                                height: 40,
                                child: Center(child: Text("احسب اقصي مده",style: TextStyle(fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>loancalc2()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.transparent
                                ),
                                width: 120,
                                height: 40,
                                child: Center(child: Text("احسب القرض ",style: TextStyle(fontWeight: FontWeight.bold),)),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                SizedBox(height: 10,),
                ExpansionTile(

                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/limit.png"),
                  ),
                  title: Text(
                    "خصائص المنتج",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                  ),

                  subtitle: Text("اضغط للاطلاع على خصائص المنتج", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
                            child: Center(child: Text("120",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text("6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text(" 6000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text("4% للقروض بضمان شهادات ابن مصر / 2% لباقى الاوعيه الادخاريه",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11 ),textDirection: TextDirection.rtl,textAlign: TextAlign.center,)),
                            width: 230,
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
                            child: Center(child: Text("معدل العائد المدين",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
                            width: 120,
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
                            child: Center(child: Text("80% من قيمه الضمانه ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11 ),textDirection: TextDirection.rtl)),
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
                            child: Center(child: Text("الحد الاقصى للتمويل من قيمه الضمانه ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ),)),
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
                            child: Center(child: Text("100 %",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text("الحد الاقصى  لنسبه التمويل من قيمه السلعه  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ),)),
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
                            child: Center(child: Text(" 21",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text("الحد الادنى لسن المقترض ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ),)),
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

                    
                    SizedBox(height: 5,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Container(
                            child: Center(child: Text(" 5% في حالة السداد عن طريق العميل   7% في حالة السداد عن طريق بنك اخر.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12 ),textAlign: TextAlign.center,textDirection: TextDirection.rtl,)),
                            width: 240,
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
                            child: Center(child: Text("السداد المعجل",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ),)),
                            width: 100,
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
                            child: Center(child: Text(" يتم إحتساب عوض تأخير عن أيام التاخير بالكامل بواقع 24% سنوياً  عن الجزء الغير مسدد من القسط الشهرى في تاريخ الاستحقاق",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10 ),textAlign: TextAlign.center,textDirection: TextDirection.rtl,)),
                            width: 240,
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
                            child: Center(child: Text("غرامه التاخير",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ),)),
                            width: 100,
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
                            child: Center(child: Text("  1%  من قيمة القرض تخصم أليا  مع اعفاء القروض بضمان شهادات ابن مصر",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12 ),textDirection: TextDirection.rtl)),
                            width: 270,
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
                       
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Container(
                            child: Center(child: Text("3870",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text("5 ايام من تاريخ استحقاق القسط",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12 ),textDirection: TextDirection.rtl,textAlign: TextAlign.center,)),
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
                            child: Center(child: Text("فتره السماح",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),textAlign: TextAlign.center,)),
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
                  ],
                ),
                ExpansionTile(

                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/calc.png"),
                  ),
                  title: Text(
                    "مستندات القرض",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                  ),

                  subtitle: Text("اضغط للاطلاع على مستندات القرض ", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
                                      "النموذج الموحد لطلب الحصول على القرض مستوفى البيانات ",
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
                                      "عرض اسعار بالسلع المطلوبه ",
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
                                      "اقرار عدم تغيير الضمانة في حالة العملاء بضمان الشهادات الثلاثية / يوم بيوم فقط",
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
                                      "صورة شهادة ميلاد القاصر واضحة ومؤشر عليها بصورة طبق الأصل ومعتمدة بأختام وتوقيعات الفرع في حالة المنح (للولي الطبيعي بضمان أوعية ادخارية مملوكة للقاصر).",
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
                                      "عقد القرض المعتمد",
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
                                      "تقرير LN RETAIL NATIONAL",
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




                SizedBox(height: 15,),





              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "DETAILS",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
            ),

          ),
        ],

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

