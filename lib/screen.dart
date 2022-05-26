import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/screenInbox.dart';
import 'package:flutter_application_1/component/screenList.dart';
import 'package:flutter_application_1/component/screenMenu.dart';

class Pertemuan09 extends StatelessWidget {
  const Pertemuan09({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Pertemuan 09'),
            bottom: TabBar(tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Hub Doctor'),
              Tab(text: 'Status'),
            ]),
          ),
          drawer: Drawer(
            backgroundColor: Colors.cyan,
            child: Column(
              children: [
                DrawerHeader(
                  child: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.inbox,color: Colors.purple,),
                  title: Text('Beranda'),
                  onTap: () {
                    print('Beranda');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenInbox()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.inbox,color: Colors.red,),
                  title: Text('List'),
                  onTap: () {
                    print('List');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenList()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.inbox,color: Colors.yellow,),
                  title: Text('Menu'),
                  onTap: () {
                    print('Menu');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenMenu()));
                  },
                )
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(50),
            child: TabBarView(children: [
              //  Anak 1
              Text('Home'),

              // Anak 2
                Builder(builder: (context){
                  return ListTile(
                    onTap: (){
                      showBottomSheet(
                        context: context, 
                        builder: (context){
                          return Container(
                            height: 200,
                            child: 
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red
                                  ),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Call Now'),
                                      
                                     IconButton(
                                       onPressed: (){
                                         Navigator.pop(context);
                                       }, 
                                       icon: Icon(Icons.close))
                                    ],
                                  )
                                ),
                                
                              ],
                            ),
                          );
                        });
                    },
                    title: Text('Call Doctor'),
                    trailing: Icon(Icons.call),
                  );
                }),
               
              // Text('Hub Doctor'),
              // Anak 3
              Text('Status')
            ]),
          ),
        ));
  }
}
