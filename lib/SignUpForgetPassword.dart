import 'package:flutter/material.dart';

import 'OTPpage.dart';


class SignUpForgetPassword extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
        EdgeInsets.only(top: 40.0, bottom: 20.0, left: 20.0, right: 20.0),
        child: Column(
          children: <Widget>[





            buildTextFieldSignup("First Name"),
            SizedBox(height: 10),
            buildTextFieldNumbers("Ph.No"),
            SizedBox(height: 10),
            buildTextFieldSignup("Email"),
            SizedBox(height: 10),
            buildTextFieldSignup("Password"),
            SizedBox(height: 10),
            new RaisedButton(
              child: Text('SignUp'),
              color: Colors.redAccent,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                      return new OTPpage();
                    }));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
    );
  }


  buildTextFieldSignup(String hintText) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      //obscureText: hintText == "Password" ? isHidden : false,
    );
  }

  buildTextFieldNumbers(String hintText) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      //obscureText: hintText == "Password" ? isHidden : false,
    );
  }
}

