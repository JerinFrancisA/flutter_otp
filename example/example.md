# flutter_otp

A Flutter package for iOS and Android for sending and verifying OTP to a Phone number.
For code example see this [example code](https://pub.dev/packages/flutter_otp#-readme-tab-)

:star: the repo to show your support !

# Example

Example Usage:

```
...
sendOtp('958347XXXX');  //Pass phone number as String

...

int enteredOtp;
TextField(
  onChanged: (val) {
    enteredOtp = val;    
  }
)

...

bool isCorrectOTP = resultChecker();
if(isCorrectOTP) {
    print('Success');
} else {
    print('Failure');
}
...
```

OR custom "messageText" can be passed as parameter to sendOTP

```
...
sendOtp('958347XXXX', 'OTP is : ');  //Pass phone number and Custom messaseText as String

...

int enteredOtp;
TextField(
  onChanged: (val) {
    enteredOtp = val;    
  }
)

...

bool isCorrectOTP = resultChecker();
if(isCorrectOTP) {
    print('Success');
} else {
    print('Failure');
}
...
```

## More Information
[Pub package](https://pub.dartlang.org/packages/flutter_otp)
[Flutter documentation](https://flutter.io/).
