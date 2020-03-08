[![Awesome Flutter](https://img.shields.io/badge/Awesome-Flutter-blue.svg?longCache=true&style=flat-square)](https://github.com/Solido/awesome-flutter)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwyl/esta/issues)
[![Known Vulnerabilities](https://snyk.io/test/github/dwyl/hapi-auth-jwt2/badge.svg?targetFile=package.json)](https://snyk.io/test/github/dwyl/hapi-auth-jwt2?targetFile=package.json)
[![Build Status](https://travis-ci.org/dwyl/esta.svg?branch=master)](https://travis-ci.org/dwyl/esta)

# flutter_otp

A Flutter package for Android and iOS for sending and verifying OTP to a Phone number.

### Important message for existing Users
#### NEW FEATURE !!

Now you can send the message to any country code passed as a parameter to the interface (sendOtp() function)

# Installing
## Use this package as a library
### 1. Depend on it
Add this to your package's pubspec.yaml file:
```
dependencies:
  flutter_otp: ^0.3.2
```
### 2. Install it
You can install packages from the command line:
with Flutter:
```
$ flutter packages get
```
Alternatively, your editor might support flutter packages get. Check the docs for your editor to learn more.

### 3. Import it
Now in your Dart code, you can use:
```
import 'package:flutter_otp/flutter_otp.dart';
```

# Functions

The important functions used in the package are : 

1. sendOtp() to send a OTP (four digit by default, but customizable): 

``` 
void sendOtp(String phoneNumber, [String messageText]) {
    ...        
}
```

>NOTE:
> 1. 10 digit phoneNumber should be passed.
> 2. parameter "messageText" is optional. By default the message text is "Your OTP is : XXXX". If "messageText" parameter is passed then message is sent as "<messageText> XXXX".

2. resultChecker() which takes the OTP entered by the user as a parameter. The function returns true if OTP is matched, else false is returned.

``` 
bool resultChecker(int enteredOtp) {
    ...
} 
```

>NOTE: The OTP entered by user (say, through TextField widget or TextFormField widget etc) is to be passed as a parameter to this function.

# Usage

To use this package in your application you need to have a sim card in your mobile.

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

## Contributors
1. [Fawaz Hussain](https://github.com/fawazhussain)
2. [Jerin Francis](https://github.com/JerinFrancisA)


:star: the repo to show support!


## More Information
[Pub package](https://pub.dartlang.org/packages/flutter_otp)
[Flutter documentation](https://flutter.io/).
