import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0)
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Text('FORGET PASSWORD ?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.brown, fontStyle: FontStyle.italic),),
            Padding(padding: EdgeInsets.all(15.0),),

            TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade500),
                    borderRadius: BorderRadius.circular(20.0)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade500),
                    borderRadius: BorderRadius.circular(20.0)
                ),

                hintText: 'ENTER YOUR EMAIL',
              ),
            ),

            SizedBox(
              width: 150.0,
              child: new RaisedButton(
                onPressed: (){},
                colorBrightness: Brightness.dark,
                color: Colors.lightGreen.shade500,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)

                ),

                child: Text('Submit', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  fontSize: 19.0,
                  color: Colors.white,

                ),),
                elevation: 18.0,
              ),
            ),

          ],
        ),
      ),
    );

  }
}
