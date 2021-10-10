import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmstaffhelp/tabbar credit/tablemodel.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

class TablePage3 extends StatefulWidget {
  final List<CreditTableModel3> creditTableList2;
  final double creditAmount;
  final int creditTerm;
  final String type;

  final double interest;
  final double bsmv;
  final double kkdf;
  final double installment;
  final Color themeColor;
  final Color labelColor;
  final double begining;
  final double total;
  final double totalcost;
  final double flatrate;
  final double totalinstallment;
  final double totalcoost;

  TablePage3({
    this.creditTableList2,
    this.creditAmount,
    this.creditTerm,
    this.type,
    this.interest,
    this.bsmv,
    this.kkdf,
    this.installment,
    this.themeColor,
    this.labelColor,
    this.begining,
    this.total,
    this.totalcost,
    this.flatrate,
    this.totalinstallment,
    this.totalcoost
  });

  @override
  _TablePage3State createState() => _TablePage3State();
}

class _TablePage3State extends State<TablePage3> {
  // todo: for localizations
  // todo: String ifadeler yerine localization bilgisi girilebilir
  String tableAppBarTitle = "تفاصيل التقسيط";
  String creditAmountText = "المبلغ المسحوب ";
  String installmentText = "القسط الشهرى";
  String creditTermText = "مده التقسيط";
  String creditTermText2 = "نوع المده";

  String bsmvText = "عموله السداد المعجل";
  String kkdfText = "الاصل المتبقى";
  String creditInterestText = "معدل الفايده";
  String periodText = "مسلسل";
  String mainMoneyText = "الاصل";
  String interestText = "الفايده";
  String remainingMainMoneyText = "اجمالى السداد";
  String moneyType = " TL";
  String beginingtext = "اجمالى السداد";
  String totalinterest = "اجمالى الفايده المدفوعه";
  String totalinstallment = "اجمالى الاقساط المدفوعه";
  String totalcoost = "اجمالى التكلفه المدفوعه";

  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 800;
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: widget.themeColor ?? Colors.red,
        title: Text(tableAppBarTitle,style: TextStyle(color: widget.labelColor ?? Colors.white,fontWeight: FontWeight.bold),),
        iconTheme: IconThemeData(
          color: widget.labelColor ?? Colors.white, //change your color here
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[


            //GestureDetector(
            // child: Container(height: 50,width: 50,color: Colors.red,)),
            ExpansionTile(
              title: Text("CUSTOMER OFFER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
              subtitle: Text("اضغط للاطلاع على عرض العميل"),
              children: [
                RepaintBoundary(
                  key: previewContainer,

                  child: Container(
                    color: Colors.white,
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
                                  textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey,),

                        Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 5,),

                            Expanded(
                              child: Text(
                                " تفاصيل التقسيط",
                                textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
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
                                child: Center(child: Text(widget.creditAmount.toStringAsFixed(0),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 120,
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
                                child: Center(child: Text("المبلغ المسحوب",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
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
                                child: Center(child: Text(widget.creditTerm.toStringAsFixed(0),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 120,
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
                                child: Center(child: Text("مده التقسيط",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
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
                                child: Center(child: Text(widget.type,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 120,
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
                                child: Center(child: Text("نوع المده ( شهور ام سنوات )",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
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
                                child: Center(child: Text(widget.installment.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ,color: Colors.white),)),
                                width: 120,
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
                                child: Center(child: Text("القسط الشهرى",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
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
                                child: Center(child: Text(widget.total.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ,color: Colors.white),)),
                                width: 120,
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
                                child: Center(child: Text("اجمالى الفايده المدفوعه",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
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
                                child: Center(child: Text(widget.begining.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ,color: Colors.white),)),
                                width: 120,
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
                                child: Center(child: Text("اجمالى القرض + الفوائد",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
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
                                child: Center(child: Text(widget.flatrate.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ,color: Colors.white),)),
                                width: 120,
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
                                child: Center(child: Text("الفايده الثابته",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(0),

                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Center(
                  child: Container(
                      child: RaisedButton(
                          child: Text("Share offer!"),
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


            Card(
              color: Colors.white,
              elevation: 11,
              margin: EdgeInsets.all(11),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(

                  child: dataBodyTitle(),
                ),
              ),
            ),
            Card(
              color: Colors.white,

              elevation: 11,
              margin: EdgeInsets.all(11),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey)
                    ),
                    child: dataBody(),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget dataBodyTitle() {
    return DataTable(
      columnSpacing: 5,

      columns: <DataColumn>[
        DataColumn(
            label: Text(
              creditAmountText,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold,),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              creditTermText,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              creditTermText2,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              creditInterestText,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              bsmvText,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),

        DataColumn(
            label: Text(
              installmentText,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              totalinterest,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              beginingtext,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
      ],
      rows: <DataRow>[
        DataRow(
          cells: [
            DataCell(
              Center(child: Text(widget.creditAmount.toStringAsFixed(2),style: TextStyle(color: Colors.black,),)),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.creditTerm.toString(),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.type,style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.interest.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.bsmv.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),

            DataCell(
              Center(child: Text(widget.installment.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.total.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.begining.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
          ],
        ),
      ],
    );
  }

  Widget dataBody() {
    return DataTable(
      dividerThickness: 2,

      dataRowHeight: 40,
      headingTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),
      columnSpacing: 5,
      columns: <DataColumn>[

        DataColumn(
            label: Center(
              child: Text(
                periodText,
                style: TextStyle(color: Colors.black, fontSize: 16),textAlign: TextAlign.center,
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                installmentText,
                style: TextStyle(color: Colors.black, fontSize: 16),textAlign: TextAlign.center,
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                mainMoneyText,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                interestText,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                kkdfText,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                bsmvText,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                remainingMainMoneyText,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                totalinstallment,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                totalcoost,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              periodText,
              style: TextStyle(color: Colors.black, fontSize: 16),textAlign: TextAlign.center,
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
      ],
      rows: widget.creditTableList2
          .map((dataRow) => DataRow(cells: [

        DataCell(
          Center(
            child: Text(
              (widget.creditTableList2.indexOf(dataRow) + 1).toString(),style: TextStyle(color: Colors.black,),),
          ),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(
            child: Text(dataRow.installment.toStringAsFixed(2),style:
            TextStyle(color: Colors.black,),textAlign: TextAlign.center,),
          ),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(

          Text(dataRow.mainCurrency.toStringAsFixed(2),style:
          TextStyle(color: Colors.black,),textAlign: TextAlign.center,),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.interest.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.mainRemainingMoney.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.bsmv.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.kkdf.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.totalinstallment.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.totalcoost.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(
            child: Text(
                (widget.creditTableList2.indexOf(dataRow) + 1).toString(),style: TextStyle(color: Colors.black,)),
          ),
          showEditIcon: false,
          placeholder: false,
        ),
      ]))
          .toList(),
    );
  }
}

