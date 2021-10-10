import 'package:flutter/material.dart';


class Specification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.star,size: 19,),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  "يمكن إصدارها بالضمان الشخصى فقط",textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200),
                ),
              ),        ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.star,size: 19,color: Colors.red,),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  "استخدام البطاقة في عمليات الشراء والسحب النقدي محليا ودولياً والسداد بالجنية المصري",textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200),
                ),
              ),        ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.star,size: 19,color: Colors.red,),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  "إمكانية استخدام 100 % من الحد الائتماني للبطاقة في السحب النقدي",textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200),
                ),
              ),        ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.star,size: 19,color: Colors.red,),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  "إمكانية إصدار عدد من البطاقات إضافية",textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200),
                ),
              ),        ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.star,size: 19,color: Colors.red,),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  "إمكانية استخدام البطاقة من خلال شبكة الانترنت",textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200),
                ),
              ),        ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.star,size: 19,color: Colors.red,),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  "أطول فترة سداد تصل الى 57يوم",textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200),
                ),
              ),        ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.star,size: 19,color: Colors.red,),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  "اقل حد أدني للسداد 5% من قيمة الاستخدامات الشهرية",textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200),
                ),
              ),        ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.star,size: 19,color: Colors.red,),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  "سداد استخدامات البطاقة لدي الات الـATM  التي تقبل الإيداع الخاصة ببنك مصر",textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200),
                ),
              ),        ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.star,size: 19,color: Colors.red,),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  "سداد استخدامات البطاقة لدى كافة فروع البنك المنتشرة بكافة أنحاء الجمهورية وعلى مدار 24 ساعة يومياً من فروع البنك بالعديد من المطارات والفنادق",textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200),
                ),
              ),        ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.star,size: 19,color: Colors.red,),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  "استخدام البطاقة في تقسيط عمليات السحب النقدي والمشتريات على فترات تصل الى 36شهر بعائد مدين مميز",textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200),
                ),
              ),        ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.star,size: 19,color: Colors.red,),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  "خدمة الرسائل النصية SMSعند اجراء اي معاملات بالبطاقة واصدار بيان العمليات الشهري لتوضيح قيمة المديونية والحد الادنى للسداد واصدار او تجديد البطاقة",textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200),
                ),
              ),        ],
          ),

        ],
        ),
      )

    );
  }
}