import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import './LoginPage.dart';

class PinInput extends StatefulWidget {
  @override
  _PinInputState createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {

    return BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(15),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        hintColor: Colors.red,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: Text('drawer'),
        body: Builder(
          builder: (context) {
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      child: PinPut(
                        fieldsCount: 6,
                        onSubmit: (String pin) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => LoginPage(),
                              ));
                        },
                        focusNode: _pinPutFocusNode,
                        controller: _pinPutController,
                        submittedFieldDecoration: _pinPutDecoration.copyWith(
                            borderRadius: BorderRadius.circular(20)),
                        selectedFieldDecoration: _pinPutDecoration,
                        followingFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.red.withOpacity(1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
