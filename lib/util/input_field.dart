import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  String field="";
  String hint="";
  InputField(String f, String h) {
    field = f;
    hint = h;
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
      child: Stack(

        children: <Widget>[

//          Padding(padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),),

          TextFormField(

            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade500),
                  borderRadius: BorderRadius.circular(40.0)
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade500),
                  borderRadius: BorderRadius.circular(40.0)
              ),

              hintText: hint,
            ),


            validator: (value) => value.isEmpty ? 'Email Address can\'t be empty' : null,
//            onSaved: (value) => _email = value.trim(),

          ),

          Positioned(
            top: -3.0,
            left: MediaQuery.of(context).size.width / 10,
            child: Container(
              color: Colors.white,
              child : Text(field, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
            ),
          )

        ],
      ),
    );
  }
}
