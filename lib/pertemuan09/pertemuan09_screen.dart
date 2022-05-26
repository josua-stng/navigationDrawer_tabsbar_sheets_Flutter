import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/screenInbox.dart';
import 'package:flutter_application_1/component/screenList.dart';
import 'package:flutter_application_1/component/screenMenu.dart';
import 'package:flutter_application_1/pertemuan09/pertemuan09_provider.dart';

class pertemuan09Screen extends StatefulWidget {
  pertemuan09Screen({Key? key}) : super(key: key);

  @override
  State<pertemuan09Screen> createState() => _pertemuan09ScreenState();
}

class _pertemuan09ScreenState extends State<pertemuan09Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
        title: Text('Wibu Doc'),
        bottom: TabBar(isScrollable: true,tabs: [
          Tab(
            child: Text('Home'),
          ),
           Tab(
            child: Text('Status'),
          ),
           Tab(
            child: Text('Call'),
          )
        ],),
      
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.cyan),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.network(
                        "https://cdn.myanimelist.net/images/characters/15/461121.jpg"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Josua Sitanggang',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'josuasitangggang21@gmail.com',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            
            ListTile(
              onTap: (){
                 print('Spesialis');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenInbox()));
              },
              leading: Icon(Icons.domain_verification_rounded),
              title: Text('Spesialis'),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
             ListTile(
              onTap: (){
                 print('Penyakit');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenList()));
              },
              leading: Icon(Icons.coronavirus),
              title: Text('Penyakit'),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ), ListTile(
              onTap: (){
                   print('Tanya Dokter');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenMenu()));
              },
              leading: Icon(Icons.directions_walk_outlined),
              title: Text('Tanya Dokter'),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
            TextButton(
            onPressed: (){
              print('Home Page');
            }, 
            child: Image.network('https://cdn.dribbble.com/users/3550736/screenshots/15915241/media/9cba1e6226cf28eedacd57c0b518263d.jpg?compress=1&resize=400x300')),
            TextButton(
            onPressed: (){
              print('Status');
            }, 
            child: Image.network('https://inovasicom.files.wordpress.com/2015/04/sharecare-homepage.jpg')),
            ButtonSheeds()
        ]),
      ),
    );
  }
}
