import 'package:flutter/material.dart';
class Files extends StatefulWidget
{
  @override
  _Files createState() => _Files();
}

class _Files extends State<Files>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Files')
      ),
      body: new Center(
        child: Text('Files Screen',
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50.0
        ),),
      ),
    );
  }

}