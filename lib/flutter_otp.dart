library flutter_otp;

import 'dart:math';
import 'package:sms/sms.dart';

class FlutterOtp {
  int otp;  //Generated OTP
  int enteredOtp;  //Entered OTP

  void generateOtp() {
    //Generates four digit OTP by default
    int min = 1000;
    int max = 9999;
    otp = min + Random().nextInt(max - min);
  }

  void sendOtp(String phoneNumber, [String message]) {
    //function parameter 'message' is optional.
    generateOtp();
    SmsSender sender = new SmsSender();
    String address = '+91' + phoneNumber;  // +91 for India. Change it according to use.
    sender.sendSms(
        new SmsMessage(address, message ?? 'Your OTP is : ' + otp.toString()));
  }

  bool resultChecker() {
    //To validate OTP
    if (enteredOtp != otp)
      return false;
    else
      return true;
  }
}
