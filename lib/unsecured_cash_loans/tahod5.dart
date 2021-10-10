import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../drobdownlist.dart';
import '../loancalc2.dart';

class tahod5 extends StatefulWidget {
  @override
  _tahod5State createState() => _tahod5State();
}

class _tahod5State extends State<tahod5> {
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
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
            Column(
              children: [

                Padding(
                    padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              "جهات غير متعاقده \n تعهد جهه العمل بتحويل الراتب او القسط دون المستحقات بالعاملين بالدوله ( تحويل قسط فقط )",textAlign: TextAlign.center,

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
                            child: Center(child: Text("96",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text("1000000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text(" 5000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text("3 Months",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text("1000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text("3%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text(" 14.25",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text("3948",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                            child: Center(child: Text("مرور 3 شهور",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),)),
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
                  ],
                ),
                ExpansionTile(

                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/calc.png"),
                  ),
                  title: Text(
                    "مستندات المرحله الاولى",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                  ),

                  subtitle: Text("اضغط للاطلاع على مستندات المرحله الاولى ", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
                                      "النموذج الموحد لطلب الحصول على القرض مستوفى البيانات يلزم وجود تليفون ارضى ( للعميل او جهه العمل او الشخص المرجعى )",
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
                                      "تعهد جهه العمل +شهاده بالدخل توضح الدخل الشهرى للعميل تكون صلاحيتها شهرين على الأكثر وفى حاله وجود مكافات او حوافز يتم تقديم ما يفيد ذلك أو ثلاث شرائط مرتب حديثه اصل وصوره معتمده او كشف حساب ",
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
                ExpansionTile(

                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/calc.png"),
                  ),
                  title: Text(
                    "مستندات المرحله الثانيه",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                  ),

                  subtitle: Text("اضغط للاطلاع على مستندات المرحله الثانيه ", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
                                      "شيكات سنويه مسطره  + خطاب مطابقه توقيع العميل على الشيكات",
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
                ExpansionTile(

                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/calc.png"),
                  ),
                  title: Text(
                    "احسب القرض",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                  ),

                  subtitle: Text("اضغط لحساب القرض ", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
                ExpansionTile(

                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/calc.png"),
                  ),
                  title: Text(
                    "CUSTOMER OFFER",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                  ),

                  subtitle: Text("Click to see customer offer ", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
                            Container(
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
                                                    "تعهد جهه العمل +شهاده بالدخل توضح الدخل الشهرى للعميل تكون صلاحيتها شهرين على الأكثر وفى حاله وجود مكافات او حوافز يتم تقديم ما يفيد ذلك أو ثلاث شرائط مرتب حديثه اصل وصوره معتمده او كشف حساب ",
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



                          ],
                        ),
                      ),
                    )
                  ],
                ),


                SizedBox(height: 15,),





              ],
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

