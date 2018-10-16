import 'package:app_drawer_with_flutter/files.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(new MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget{
  @override
  _MyApp createState() => new _MyApp();
}


class _MyApp extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("App drawer with flutter",
        style: new TextStyle(
          color: Colors.red,
        ),),
      ),
      body: new Center(
        child: new Text("Succeeded!",
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50.0
        ),),
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('User Name'),
              accountEmail: new Text('xyz@abc.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text('P')
              ),
            ),
            new ListTile(
              title: new Text('Home'),
              trailing: new Icon(Icons.home),
            ),
            new ListTile(
              title: new Text('Files'),
              trailing: new Icon(Icons.folder),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Files()),
                );
              },
            )

            
          ]
        )
      ),
    );
  }
}