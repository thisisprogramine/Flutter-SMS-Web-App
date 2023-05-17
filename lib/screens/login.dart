import 'dart:io';

import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';

import 'otp.dart';

class LoginScreen extends StatelessWidget {
  final Telephony telephony = Telephony.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //_sendSMS();
            Navigator.of(context).push(MaterialPageRoute(builder: (builder) => OTPScreen()));
          },
          child: Text('Login to continue'),
        ),
      ),
    );
  }

  // _sendSMS() async {
  //   if(Platform.isIOS || Platform.isAndroid) {
  //     telephony.sendSms(to: '7397967776', message: '1212');
  //   }
  // }
}
