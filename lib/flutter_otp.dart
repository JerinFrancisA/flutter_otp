library flutter_otp;

import 'dart:math';
import 'package:sms/sms.dart';

class FlutterOtp {
  int _otp, _min, _max; //Generated OTP

  /// This function is used to generate a Random OTP in the range [1000, 9999]
  /// which can be used to send and verify. The [Random.nexInt] function is been
  /// used to do the same.

  void generateOtp([int min = 1000, int max = 9999]) {
    //Generates four digit OTP by default
    _min = min;
    _max = max;
    _otp = _min + Random().nextInt(_max - _min);
  }

  /// This function should be called with [phoneNumber] as a Parameter and
  /// [messageText] as a optional parameter. If [messageText] is not passed it is
  /// taken as 'You OTP is : <Generated OTP>'.

  void sendOtp(String phoneNumber, [String messageText]) {
    //function parameter 'message' is optional.
    generateOtp();
    SmsSender sender = new SmsSender();
    String address =
        '+91' + phoneNumber; // +91 for India. Change it according to use.
    sender.sendSms(new SmsMessage(
        address, messageText ?? 'Your OTP is : ' + _otp.toString()));
  }

  /// This function is used to validate the OTP entered by the user, by comparing
  /// it with the generated value [_otp]. If validates to be true then bool value
  /// true is returned. Else, false is returned.
  ///
  bool resultChecker(int enteredOtp) {
    //To validate OTP
    if (enteredOtp != _otp)
      return false;
    else
      return true;
  }
}
