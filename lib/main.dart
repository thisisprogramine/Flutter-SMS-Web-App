import 'package:flutter/material.dart';

import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }

}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//   return Scaffold(
//       body: FutureBuilder<List<SmsMessage>>(
//         future: getSms(),
//         builder: (context, snapshot) {
//           print('id: ${snapshot.data?[1].id}');
//           print('body: ${snapshot.data?[1].body}');
//           print('date: ${snapshot.data?[1].date}');
//           print('state: ${snapshot.data?[1].state}');
//           print('address: ${snapshot.data?[1].address}');
//           print('isRead: ${snapshot.data?[1].isRead}');
//           print('dateSent: ${snapshot.data?[1].dateSent}');
//           print('kind: ${snapshot.data?[1].kind}');
//           return Center(child: Text('${snapshot.data?[1].body}'));
//         },
//       ),
//     );
//   }
//
//   Future<List<SmsMessage>> getSms() async {
//     SmsQuery query = new SmsQuery();
//     List<SmsMessage> messages = await query.getAllSms;
//     return messages;
//   }
// }

