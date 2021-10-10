import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RecomendedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String image = "assets/vi.jpg";
    return Scaffold(
      body: Stack(
        children: <Widget>[

          Container(
              foregroundDecoration: BoxDecoration(color: Colors.black26),
              height: 400,
              child: Image.asset(image, fit: BoxFit.cover)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
            child: Column(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "برنامج\n دخل افتراضى ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                    const SizedBox(width: 5.0),
                   
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: Color(0XFF802b40),
                  child: Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(

                        child: ExpansionTile(

                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/profile.png"),
                          ),
                          title: Text(
                            "الفئه المستهدفه",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                          ),

                          subtitle: Text("اضغط للاطلاع على الفئات المستهدفه", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 30,),
                          backgroundColor: Colors.white10,

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
        "بطاقه ائتمانيه تصدر لعملاء الاوعيه الادخاريه وذلك من خلال احتساب دخل افتراضى لهذه الفئه من العملاء",
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
                                              "عملاء الاوعيه الادخاريه بمصرفنا بشرط ان يكون من ( الموظفين او اصحاب الانشطه التجاريه والمهن الحره)",
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
                SizedBox(height: 5,),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: Color(0XFF802b40),
                  child: Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(

                        child: ExpansionTile(

                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/terms.png"),
                          ),
                          title: Text(
                            "شروط المنح",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                          ),

                          subtitle: Text("اضغط للاطلاع على شروط المنح", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 30,),
                          backgroundColor: Colors.white10,

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
                                              "أن يكون من عملاء البنك لفتره لا تقل عن 12 شهر",
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
                                              "الا يقل التقييم عن مرضي",
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
                                              "تصدر للعملاء المصريين فقط",
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
                                              "الحد الادنى للدخل الافتراضى 10000 جم",
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
                SizedBox(height: 5,),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: Color(0XFF802b40),
                  child: Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(

                        child: ExpansionTile(

                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/calc.png"),
                          ),
                          title: Text(
                            "طريقه احتساب الدخل الافتراضي",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                          ),

                          subtitle: Text("اضغط للاطلاع على طريقه احتساب الدخل", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 30,),
                          backgroundColor: Colors.white10,

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
                                              "صافي قيمه الاوعيه (متوسط 6 اشهر ) / 6.6 مع استبعاد اى اوعيه محتجزه لاى تسهيلات ائتمانيه",
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
                SizedBox(height: 5,),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: Color(0XFF802b40),
                  child: Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(

                        child: ExpansionTile(

                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/limit.png"),
                          ),
                          title: Text(
                            "الحد الائتمانى",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                          ),

                          subtitle: Text("اضغط للاطلاع على الحد الائتمانى", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 30,),
                          backgroundColor: Colors.white10,

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
                                              " 300 % من الدخل الافتراضى المحتسب للعملاء الحاصلين على تسهيلات ائتمانيه مر عليها اكثر من 12 شهر",
                                              textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),textDirection: TextDirection.rtl,
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
                                            child:  Text(
                                              " 200 % من الدخل الافتراضى المحتسب للعملاء الحاصلين على تسهيلات ائتمانيه لم يمر عليها اكثر من 12 شهر",
                                              textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),textDirection: TextDirection.rtl,
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

                SizedBox(height: 5,),

                Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: Color(0XFF802b40),
                  child: Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(

                        child: ExpansionTile(
children: <Widget>[
  SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width / 2 - 50,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ]),
          child: Center(
            child: Text("طلب الاصدار متضمن البيانات الاساسيه(شخص مرجعى+تليفون ارضى)",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width / 2 - 50,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ]),
          child: Center(
            child: Text("صوره بطاقه الرقم القومى",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width / 2 - 50,
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ]),
          child: Center(
            child: Text(" تقرير\n Assumption Income report for savings Customer ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width / 2 - 50,
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ]),
          child: Center(
        child: Text("تقرير يفيد ان العميل لا يوجد تحويل مرتب له على حساب او بطاقه مرتبات \n Salary Transferred",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
        ),
                        ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width / 2 - 50,
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ]),
          child: Center(
            child: Text("اقرار من العميل بعدم حصوله على تسهيلات ائتمانيه طرف مصرفنا باثبات دخل",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width / 2 - 50,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ]),
          child: Center(
            child: Text("صورة معتمدة من الشاشة التي تفيد ان العميل غير مدرج بقوائم المتابعة العالمية والمتابعة المحلية ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 140,
          width: MediaQuery.of(context).size.width / 2 - 50,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ]),
          child: Center(
            child: Text("مذكره من الفرع تفيد ان العميل غير حاصل على أية تسهيلات ائتمانية قائمة ضمن برنامج إثبات دخل أو تحويل الراتب طرف مصرفنا ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width / 2 - 50,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ]),
          child: Center(
            child: Text("سند لامر وتفويض بملئ سند لامر ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 140,
          width: MediaQuery.of(context).size.width / 2 - 1,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ]),
          child: Center(
            child: Text("بالنسبه لعملاء الانشطه التجاريه والمهن الحره ( صوره سجل تجاري حديث او ترخيص مزاوله المهنه + صوره البطاقه الضريبيه) + صوره ايصال تحصيل مصاريف الافلاس والبرتستو ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 20,),

      ],
    ),
  ),
],
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/check.png"),
                          ),
                          title: Text(
                            "المستندات المطلوبه ",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                          ),

                          subtitle: Text("اضغط للاطلاع على المستندات المطلوبه", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 30,),
                          backgroundColor: Colors.white10,

                        ),
                      ),



                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: Color(0XFF802b40),
                  child: Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[




                    ],
                  ),
                ),
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
                "DETAIL",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
            ),

          ),
          Container(
            alignment: Alignment.center,
            child: Text("الحد الائتمانى الاقصى 150000 جم ",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
            margin: EdgeInsets.only(top: 80),
            width: 200,
            height: 50,
          decoration: BoxDecoration(
            color: Color(0XFF802b40),
            borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50) ),


  
),          )
        ],
      ),
    );
  }
}
