import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var scaffoldKey;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          '                VAMS',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add_alert,
              color: Colors.white,
            ),
            iconSize: 40,
            tooltip: 'Show Snackbar', onPressed: () {  },

            // onPressed: () {
            //   scaffoldKey.currentState.showSnackBar(snackBar);
            // },
          ),
          // IconButton(
          //   icon: const Icon(Icons.navigate_next),
          //   tooltip: 'Next page',
          //   // onPressed: () {
          //   //   openPage(context);
          //   // },
          // ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 0),
            //  color: Colors.blueAccent,
            width: 48.0,
            height: 206.0,
            decoration: new BoxDecoration(
              color: Colors.blue,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0),
                bottomLeft: const Radius.circular(20.0),
                bottomRight: const Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Book Treatment',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Click Hear to ProceedTowards Our Treatment Menu to get a vet assigned for you!',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  // new IconButton(
                  //   icon: new Icon(Icons.arrow_forward,size: 50.0,
                  //   ),
                  // ),
                  // const SizedBox(width: 80.0),
                  Container(
                    // padding: EdgeInsets.all(20),
                    child: IconButton(
                      icon: new Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                    alignment: Alignment.bottomRight,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 0),
            // color: Color(0xffF3C50E),
            width: 48.0,
            height: 200.0,
            decoration: new BoxDecoration(
              color: Color(0xffF3C50E),
              // color: Colors.blue,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0),
                bottomLeft: const Radius.circular(20.0),
                bottomRight: const Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Your Treatment Record',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Select the option to view your animal compleate treatment so for',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    // padding: EdgeInsets.all(20),
                    child: IconButton(
                      icon: new Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      iconSize: 40, onPressed: () {  },
                    ),
                    alignment: Alignment.bottomRight,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 0),
            // color: Color(0xff15D319),
            width: 48.0,
            height: 230.0,
            decoration: new BoxDecoration(
              //  color: Color(0xffF3C50E),
              // color: Colors.blue,
              color: Color(0xff15D319),
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0),
                bottomLeft: const Radius.circular(20.0),
                bottomRight: const Radius.circular(20.0),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.all(10.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Buy & Sell Platform',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'explore and purchase All certified products ranging from machinery to domestic animals',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    // padding: EdgeInsets.all(20),
                    child: IconButton(
                      icon: new Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      iconSize: 40, onPressed: () {  },
                    ),
                    alignment: Alignment.bottomRight,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 0),
            // color: Color(0xffD35400),
            width: 48.0,
            height: 208.0,
            decoration: new BoxDecoration(
              //  color: Color(0xffF3C50E),
              // color: Colors.blue,
              color: Color(0xffD35400),
              // color: Color(0xff15D319),
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0),
                bottomLeft: const Radius.circular(20.0),
                bottomRight: const Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Build Your Own Farm',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'For constructing new forms and related consulation selacting menu',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    // padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomRight,
                    // child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: <Widget>[
                    //     RaisedButton(
                    //       child: Text("Dial"),
                    //       onPressed: null,
                    //     ),
                    //     SizedBox(width: 40),
                    //     RaisedButton(
                    //       child: Text("book at",
                    //       style: TextStyle(fontSize: 30),),

                    //       onPressed: null,
                    //     ),
                    //   ],
                    // ),
                    // child: new RaisedButton(
                    //   onPressed: () {},
                    //   child: new Text(
                    //     'Button',
                    //   ),

                    //   textColor: Colors.black87,
                    //   shape: new RoundedRectangleBorder(
                    //     borderRadius: new BorderRadius.circular(30.0),
                    //   ),
                    // )
                    child: IconButton(
                      icon: new Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      iconSize: 40, onPressed: () {  },
                    ),
                    // alignment: Alignment.bottomRight,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
