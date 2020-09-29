import 'package:flutter/material.dart';

class OTPpage extends StatefulWidget {
  @override
  _OTPpageState createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
        EdgeInsets.only(top: 30.0, bottom: 20.0, left: 20.0, right: 20.0),
        child: Column(
          children: <Widget>[
            buildTextFieldSignup("Enter Your OTP"),
            SizedBox(height: 10),
            Text(
              'Resend-OTP',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
            // ButtonContainerOTP(),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('OTP'),
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
        // prefixIcon: hintText == "First Name" ? Icon(Icons.email) : Icon(Icons.lock),
//      suffixIcon: hintText == "Password" ? IconButton(
//        onPressed: _toggleVisibility,
//        icon: isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
//      ) : null,
      ),
      //obscureText: hintText == "Password" ? isHidden : false,
    );
  }
}
