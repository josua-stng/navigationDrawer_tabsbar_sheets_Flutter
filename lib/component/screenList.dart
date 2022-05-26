import 'package:flutter/material.dart';

class ScreenList extends StatelessWidget {
  const ScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Penyakit'),
      ),
    body: 
    Center(
      child: 
     Container(
        margin: EdgeInsets.all(20),
     child: 
     Column(
       children: [
         Text('Penyakit Screen',style: TextStyle(fontSize: 20),),
         Divider(),
         Image.network('https://static01.nyt.com/images/2020/07/24/multimedia/00surgisphere5/00surgisphere5-mobileMasterAt3x.jpg')
       ],
     ),
      ),
    ),
    );
  }
}
