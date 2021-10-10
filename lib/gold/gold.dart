import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmstaffhelp/gold/gold_footer.dart';
import '../style.dart';

class Goldcard extends StatefulWidget {
  @override
  _GoldcardState createState() => _GoldcardState();
}

class _GoldcardState extends State<Goldcard> {
  Widget Headerbuild() {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[100],
                  spreadRadius: 3,
                  blurRadius: 7,
                ),
              ],
              borderRadius: BorderRadius.circular(20)),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.red,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }

  Widget imageproduct() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0XFF802b40),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1))
          ],
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(150),
            bottomLeft: Radius.circular(150),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            width: 200,
            height: 150,
            image: AssetImage("assets/classic.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Gold Credit Card",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "From 3000 to 9999",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  "200 EGP issue fees",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.black),
                ),
                decoration: BoxDecoration(
                    color: Colors.yellow[50],
                    borderRadius: BorderRadius.circular(30)),
                width: 100,
                height: 65,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  "100 EGP Renewal ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.black),
                ),
                decoration: BoxDecoration(
                    color: Colors.yellow[50],
                    borderRadius: BorderRadius.circular(30)),
                width: 100,
                height: 65,
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Headerbuild(),
          imageproduct(),

          SizedBox(
            height: 20,
          ),
          Mfootergold(),
        ],
      ),
    );
  }
}
