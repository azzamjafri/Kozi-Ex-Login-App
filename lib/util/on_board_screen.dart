import 'package:flutter/material.dart';
import 'package:test_project/util/login_screen.dart';

class OnBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(

      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: new Container(
            width: 150.0,
            height: 150.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new AssetImage('images/splash.png')
                )
            ),
          ),
        ),

        new Padding(padding: EdgeInsets.all(10.0),),

        new Row(

          children: <Widget>[

            new Padding(padding: EdgeInsets.fromLTRB(135.0, 0.0, 0.0, 0.0)),

            new InkWell(
              child: SizedBox(
                width: 50.0,
                height: 35.0,
                child: new RaisedButton(onPressed: (){},

                  child: Text('AR', style: TextStyle( fontSize: 10.0, ), ),
                  textColor: Colors.white,
                  focusColor: Colors.lightGreenAccent,
                  color: Colors.lightGreenAccent,

                ),
              ),
            ),
            InkWell(
              child: SizedBox(
                width: 50.0,
                height: 35.0,
                child: new RaisedButton(onPressed: (){},
                  child: Text('EN', style: TextStyle( fontSize: 10.0, ), ),
                  color: Colors.white,
                  textColor: Colors.lightGreenAccent,
                ),
              ),
            ),
          ],
        ),

        new Padding(padding: EdgeInsets.all(10.0)),

        new InkWell(

          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: new Container(
            width: 200.0,
            height: 53.0,
            decoration: new BoxDecoration(
              color: Colors.lightGreenAccent,
              border: new Border.all(color: Colors.white, width: 6.4),
              borderRadius: new BorderRadius.circular(20.0),
            ),
            child: new Center(child: new Text('LOGIN', style: new TextStyle( fontWeight: FontWeight.bold ,fontSize: 22.0, color: Colors.red, letterSpacing: 1.5), ),),
          ),
        ),

        new Padding(padding:EdgeInsets.all(20.0)),


        new InkWell(
          onTap: () => print('Kozi-Ex'),
          child: new Container(
            width: 200.0,
            height: 53.0,
            decoration: new BoxDecoration(

              color: Colors.lightGreenAccent,
              border: new Border.all(color: Colors.white, width: 6.4),
              borderRadius: new BorderRadius.circular(20.0),
            ),
            child: new Center(child: new Text('REGISTER', style: new TextStyle(fontWeight: FontWeight.bold ,fontSize: 22.0, color: Colors.red, letterSpacing: 1.5),),),
          ),
        ),


        new Padding(padding: EdgeInsets.all(40.0)),

        new InkWell(
          onTap: () => print('Kozi-Ex'),
          child: new Container(
            width: 270.0,
            height: 55.0,
            decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border.all(color: Colors.lightGreenAccent, width: 6.6),
              borderRadius: new BorderRadius.circular(50.0),
            ),
            child: new Center(child: new Text('CONTINUE AS GUEST', style: new TextStyle( fontWeight: FontWeight.bold ,fontSize: 23.0, color: Colors.brown),),),
          ),
        ),


      ],
    );
  }
}
