import 'package:bmstaffhelp/durableloans/durableemployee.dart';
import 'package:bmstaffhelp/durableloans/proffesional.dart';
import 'package:bmstaffhelp/durableloans/secured.dart';
import 'package:bmstaffhelp/sidebar/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bmstaffhelp/durableloans/pension/pension.dart';
class durablegoods extends StatefulWidget  with NavigationStates{
  @override
  _durablegoodsState createState() => _durablegoodsState();
}

class _durablegoodsState extends State<durablegoods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Card(
          shadowColor: Colors.red,
          color: Colors.white,
          child: Container(
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.redAccent,
                  title: Text("السلع المعمره"),
                  centerTitle: true,
                ),
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/dloan.jpg"))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.red,
                  height: 70,
                  width: 300,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => durableemployee()));
                    },
                    child: Text(
                      "الموظفين بالهيئات الحكوميه والقطاع العام وقطاع الاعمال العام والخاص والاستثمارى",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    splashColor: Colors.grey,
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  color: Colors.red,
                  height: 70,
                  width: 300,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => pension()));
                    },
                    child: Text(
                      "ًاصحاب ومستحقى المعاشات",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    splashColor: Colors.grey,
                  ),
                ),
                SizedBox(height: 5,),

                Container(
                  color: Colors.red,
                  height: 70,
                  width: 300,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => proddurabel()));
                    },
                    child: Text(
                      "اصحاب المهن والاعمال الحره",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    splashColor: Colors.grey,
                  ),
                ),
                SizedBox(height: 5,),

                Container(
                  color: Colors.red,
                  height: 70,
                  width: 300,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => secured()));
                    },
                    child: Text(
                      "عملاء البنك اصحاب الاوعيه الادخاريه",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    splashColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
