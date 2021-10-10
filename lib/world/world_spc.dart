import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class worldDesc extends StatelessWidget {
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
                child: Text('الشراء داخل مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('فى حدود الحد الائتمانى للبطاقه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('الشراء خارج مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('فى حدود الحد الائتمانى للبطاقه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('السحب النقدى داخل مصر (ATM)',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('20000 يوميا من الات بنك مصر والبنوك الاخرى',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('السحب النقدى داخل مصر (POS)',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('فى حدود الحد الائتمانى للبطاقه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('السحب النقدى خارج مصر (POS & ATM)',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('فى حدود الحد الائتمانى للبطاقه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('الشراء على شبكه الانترنت داخل مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(' فى حدود الحد الائتمانى للبطاقه وبحد اقصى 400000جم شهريا وبحد اقصى 8 مرات يوميا',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('الشراء على شبكه الانترنت خارج مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(' فى حدود الحد الائتمانى للبطاقه وبحد اقصى 400000جم شهريا وبحد اقصى 5 مرات يوميا',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
              ),
            ]),






          ],
        ),
      ),
    );
  }
}

