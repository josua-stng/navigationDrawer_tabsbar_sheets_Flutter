import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan09/pertemuan09_screen.dart';
import 'package:flutter_application_1/screen.dart';
import 'package:flutter_application_1/screen2/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  pertemuan09Screen()
    );
  }
}
