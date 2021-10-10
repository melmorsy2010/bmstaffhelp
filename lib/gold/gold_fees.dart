import 'package:flutter/material.dart';


class goldfees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: Table(

          textDirection: TextDirection.rtl,

          border: TableBorder.all(color: Colors.black, ),
          children: [
            TableRow(

                children: [

                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('عموله السحب من الات Atm و pos بنك مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('2% من المبلغ المسحوب وبحد ادنى 15 جم',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                  ),
                ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('عموله السحب من الات Atm و pos بنوك اخرى داخل مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('2% من المبلغ المسحوب وبحد ادنى 15 جم',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('رسوم الاستعلام عن الرصيد من الات Atm بنك مصر ',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('مجانا',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('رسوم الاستعلام عن الرصيد من الات Atm البنوك الاخرى داخل مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('1 جم عن الحركه الواحده',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('رسوم الاستعلام عن الرصيد من الات Atm البنوك الاخرى خارج مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('3 جم عن الحركه الواحده',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('الفايده المدينه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text('2.1% شهريا',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('عموله السحب النقدى خارج مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text('3% من قيمه العمليه + 50 جم للحركه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('عموله الاستخدام خارج مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text('3% من قيمه العمليه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('غرامه التأخير',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text('50 جم ',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('رسوم تجاوز الحد الائتمانى',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text('30 جم',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('رسوم طباعه بيان عمليات بدايه من الشهر التالى',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text('20 جم عن الشهر الواحد',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('الحد الاقصى لعدد البطاقات الاضافيه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text('لا يوجد حد اقصى',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('رسوم مخالصه او شهاده بالمديونيه لمن يهمه الامر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text('50 جم',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),







          ],
        ),
      ),
    );

  }
}