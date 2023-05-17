import 'dart:io';

import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';

import 'welcome.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController _controller = TextEditingController();
  final Telephony telephony = Telephony.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify OTP'),
      ),
      body: FutureBuilder(
        future: _getSMS(),
        builder: (context, snapshot) {
          if(snapshot.data.toString() == null) {
            _controller.text = snapshot.data.toString();
          }
          return Center(
            child: Column(
              children: [
                Expanded(child: Container(),),
                Text('Enter OTP'),
                TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                ),
                Expanded(child: Container(),),
                ElevatedButton(
                  onPressed: () {
                    if(_controller.text == '1212') {
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder) => WelcomeScreen()));
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid OTP')));
                    }
                  },
                  child: Text('Verify'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<String?> _getSMS() async {
      List<SmsMessage> _messages = await telephony.getInboxSms(
        columns: [SmsColumn.ADDRESS, SmsColumn.BODY],
      );
      return _messages[0].body;
  }
}
