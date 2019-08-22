import 'package:flutter/material.dart';
import 'package:flutter_otp/flutter_otp.dart';

void main() => runApp(HomeScreen());

FlutterOtp otp = FlutterOtp();
String result;
int enteredOtp;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String phoneNumber;

  @override
  Widget build(BuildContext context) {
    bool yesOrNo = otp.resultChecker(enteredOtp);
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: <Widget>[
                Text('Enter Phone:'),
                TextField(
                  onChanged: (val) {
                    phoneNumber = val;
                  },
                ),
                RaisedButton(
                  child: Text('SEND OTP'),
                  onPressed: () {
                    otp.sendOtp(phoneNumber);
                  },
                ),
                Text('Enter OTP sent to your phone'),
                TextField(
                  onChanged: (val) {
                    enteredOtp = int.parse(val);
                  },
                ),
                RaisedButton(
                  child: Text('VERIFY'),
                  onPressed: () {
                    setState(() {
                      bool yesOrNo = otp.resultChecker(enteredOtp);
                      print(yesOrNo);
                    });
                  },
                ),
                Center(
                  child: Text(yesOrNo.toString()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
