import 'package:flutter/material.dart';

class ScreenMenu extends StatelessWidget {
  const ScreenMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Tanya Dokter'),
      ),
    body: 
    Center(
      child: 
      Container(
        margin: EdgeInsets.all(20),
     child: 
     Column(
       children: [
         Text('Tanya Dokter Screen',style: TextStyle(fontSize: 20),),
         Divider(),
         Image.network('https://media.istockphoto.com/vectors/fight-the-virus-concept-doctor-and-nurses-fighting-covid19-modern-vector-id1224079372')
       ],
     ),
      ),
    ),
    );
  }
}
