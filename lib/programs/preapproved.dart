import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Preapproved extends StatelessWidget {
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
                    "برنامج\n PRE APPROVED ",
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
                                              "ان يكون الحد األدنى لقيمة الوعاء الادخارى ودائع لاجل –شهادات ادخار او الاثنين معا في نهاية كل شهر وعلى مدار آخر ستة أشهر الا يقل عن خمسون ألف جنيها مصريا او ما يعادلها بالعملة الاجنبيه بعد استبعاد الاوعيه الادخاريه التي لا تجدد تلقائيا  ",
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
                                              "الا تكون الاوعيه الادخاريه مجمدة لصالح أي تسهيلات ائتمانية أخرى كما لا يجوز بعد إصدار البطاقة منح العميل أية تسهيلات ائتمانية بضمان هذه الاوعيه الا بعد استبعاد الجزء الذي تم وضع \nMemo High \n عليه من قيمة الوعاء الادخاري ",
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
                                              "الا يقل التقييم الرقمي للعميل وفقا لتقرير الايسكور عن مرضي",
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
                                              "ان يكون العميل مصرى الجنسيه ",
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
                                              "تصدر البطاقة بحد ائتماني 10 % من متوسط أجمالي قيمة الوعاء الادخارى غير المجمد لصالح تسهيلات اخرى ودائع لاجل-شهادات أو الاثنين معا خلال اخر 6 أشهر على ان يقرب كسر المبلغ لاقل مائه جنيه وذلك بالنسبة للحسابات الفردية  ",
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
                                              " أن يكون الحد الائتمانى 10 % من قيمة حصة العميل الشريك في الحساب المشترك على الا يزيد عن شريكين فقط وفقا لما ورد بطلب فتح الحساب، وفى حالة عدم وجود نسبة يتم تحديد النسبة مناصفة 50% على ان الا تقل قيمة الاوعيه الادخاريه الخاصة بالعميل الشريك عن 50000 جم ",
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
                                              " الحد الاقصي للبطاقة 50000 جم وفى حالة رغبة العميل في الحصول على حد ائتماني أعلى يتم اتباع ما ورد بالسياسة الائتمانيه ",
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
                          children: <Widget>[
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 120,
                                    width: MediaQuery.of(context).size.width / 2 - 30,
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
                                    height: 120,
                                    width: MediaQuery.of(context).size.width / 2 - 30,
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
                                      child: Text("صوره بطاقه الرقم القومى / صوره جواز السفر للعملاء غير المصريين",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 120,
                                    width: MediaQuery.of(context).size.width / 2 - 30,
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
                                      child: Text("اصل ايصال مرافق حديث لم يمر عليه اكثر من 3 شهور( كهرباء - غاز - مياه -تليفون )",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 120,
                                    width: MediaQuery.of(context).size.width / 2 - 30,
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
                                      child: Text("تعهد جهه العمل بسداد المديونيه فى حاله العملاء الاجانب",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 180,
                                    width: MediaQuery.of(context).size.width / 1 - 1,
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
                                      child: Text("   مستند اثبات الدخل\n (أصل شهادة بالدخل من الاداره المختصة في جهة العمل صلاحيتها\n شهرين على الاكثر\nأو 3 ايصالات مرتب حديثه( اصل او صوره معتمد ) على ان يرجع تاريخ احداها لعام سابق وذلك لاثبات مده الخبره المطلوبه\n او كشف حساب بنكى حديث يظهر تحويل المرتب لعام سابق وذلك لاثبات مده الخبره المطلوبه ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
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

        ],
      ),
    );
  }
}
