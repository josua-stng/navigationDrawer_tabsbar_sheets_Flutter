

import 'package:flutter/material.dart';

class ScreenInbox extends StatelessWidget {
  const ScreenInbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Spesialis'),
      ),
    body: 
    Center(
      child: 
      Container(
        margin: EdgeInsets.all(20),
     child: 
     Column(
       children: [
         Text('Spesial Screen',style: TextStyle(fontSize: 20),),
         Divider(),
         Image.network('https://rsud.tulungagung.go.id/wp-content/uploads/2020/12/dr.jasin_.jpeg')
       ],
     ),
      ),
    ),
    );
  }
}
