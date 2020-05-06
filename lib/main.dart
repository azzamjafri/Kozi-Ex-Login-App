import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:test_project/util/on_board_screen.dart';
void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new Home(),
        title: new Text('HEART OF PERFECT SERVICE',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            color: Colors.red,
          ),),

        image: new Image(image: AssetImage('images/KOZIEX.png'), fit: BoxFit.fill,),

        backgroundColor: Colors.lightGreenAccent,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter !"),
        loaderColor: Colors.lightGreen
    );
  }
}

class Home extends StatelessWidget {
  @override
  Color themeColor = const Color(0XFFF2ECEF);
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: themeColor,
        resizeToAvoidBottomPadding: false,

        body: OnBoardScreen(),

    );
  }
}