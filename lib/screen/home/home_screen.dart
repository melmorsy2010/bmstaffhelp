import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  static String routeName = "/profile";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<HomeScreen> {
   double _height;
   double _width;





  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {

    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;




    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Profile"),
      // ),
      body: _body(),


    );


  }


  Widget _body() {
    return new Container(
      color: Colors.white,
      child: new ListView(
        children: <Widget>[
          Column(
            children: <Widget>[

              SizedBox(
                height: 12,
              )




            ],
          ),
        ],
      ),
    );
  }

}