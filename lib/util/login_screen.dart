import 'package:flutter/material.dart';
import 'package:test_project/util/forget_password.dart';
import 'package:test_project/util/input_field.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        resizeToAvoidBottomPadding: true,
    resizeToAvoidBottomInset: true,
      body: new Stack(

        children: <Widget>[
          new Container(
            color: Colors.white,
          ),
          new Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 2,
            child: new Container(


              decoration: new BoxDecoration(
                color: Colors.lightGreenAccent.shade100,
                  borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(110.0)
                  ),
              ),
            ),
          ),






              Align(

                alignment: Alignment.topCenter,

                child: Column(

                  children: <Widget>[
                    new Container(
                      width: 100.0,
                      height: 100.0,

                      decoration: new BoxDecoration(
                        image: new DecorationImage(image: new AssetImage('images/splash.png'), fit: BoxFit.fill, ),
                        shape: BoxShape.circle,

                      ),

                    ),
                    Container(
                      width: 150.0,
                      height: 150.0,
                      child: Align(
                        alignment: Alignment.topCenter,
                          child: new Text('LOGIN', style: TextStyle(fontSize: 25.0, color: Colors.white),)),
                    ),
                  ],
                ),
              ),

          Align(
            alignment: Alignment.center,

              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 400.0,
                  child: new Card(
                    elevation: 7.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,


                      children: <Widget>[

                        Padding(padding: EdgeInsets.all(12.0),),
//                  MANUALLY CREATED INPUT FIELD CLASS
                        InputField('EMAIL ADDRESS', 'david@kozi.com'),

                        Padding(padding: EdgeInsets.all(12.0),),

                        InputField('PASSWORD', '*******'),

                        Padding(padding: EdgeInsets.all(5.0),),
                        Align(

                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                              child: new FlatButton(
                                  onPressed: (){
                                    showDialog(context: context,
                                    builder: (BuildContext context) {
                                      return ForgetPassword();
                                    });
                                  },
                                  child: new Text('FORGET PASSWORD ?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0, color: Colors.brown, fontStyle: FontStyle.italic),)
                              ),
                          ),
                        ),

                        Padding(padding: EdgeInsets.all(10.0),),

                        SizedBox(
                          width: 150.0,
                          child: new RaisedButton(
                            onPressed: (){},
                            colorBrightness: Brightness.dark,
                            color: Colors.lightGreen.shade500,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)

                            ),

                            child: Text('LOGIN', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              fontSize: 19.0,
                              color: Colors.white,

                            ),),
                            elevation: 18.0,
                          ),
                        ),

                        Padding(padding: EdgeInsets.only(top: 20.0),),

                        Divider(thickness: 1.5,),

                        Padding(padding: EdgeInsets.only(top: 9.0),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            new Text('Don\'t have an account ?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0, color: Colors.brown),),
                            new Text('REGISTER', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0, color: Colors.lightGreenAccent.shade400, letterSpacing: 1.05),)

                          ],
                        )




                      ],
                    ),
                  ),
                ),
              ),
            
          )



        ],
      ),
    );
  }
}
