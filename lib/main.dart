import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Products',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[50],
        // The title text which will be shown on the action bar
        leading: Icon(Icons.live_tv_sharp, color: Colors.red, size: 30.0),
        title: Flexible(child: Text(title, style: TextStyle(fontSize: 23, color: Colors.red))),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(right: 15.0, left: 15.0, top: 25.0, bottom: 20.0),
          height: 85,
          color: Colors.green[100],
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Padding(padding: const EdgeInsets.only(top: 10.0), 
                child: ListTile(
                  leading: Image.asset('images/mouse.jpg'),
                  title: Text(
                    "Lion Mouse",
                    maxLines: 1,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Mouse for gamer"
                  ),
                  trailing: Icon(Icons.delete_sweep_outlined, color: Colors.red),
                  ));
              }),
        ),
        Container(
          margin: EdgeInsets.only(right: 15.0, left: 15.0, bottom: 20.0),
          height: 85,
          color: Colors.green[100],
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Padding(padding: const EdgeInsets.only(top: 10.0), 
                child: ListTile(
                  leading: Image.asset('images/camera.jpg'),
                  title: Text(
                    "SSS+ Camera",
                    maxLines: 1,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Camera for travelling"
                  ),
                  trailing: Icon(Icons.delete_sweep_outlined, color: Colors.red),
                  ));
              }),
        ),
        Container(
          margin: EdgeInsets.only(right: 15.0, left: 15.0, bottom: 20.0),
          height: 85,
          color: Colors.green[100],
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Padding(padding: const EdgeInsets.only(top: 10.0), 
                child: ListTile(
                  leading: Image.asset('images/pc-mac.jpg'),
                  title: Text(
                    "Supreme PC Pro 1.2",
                    maxLines: 1,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "designed for strong perform"
                  ),
                  trailing: Icon(Icons.delete_sweep_outlined, color: Colors.red),
                  ));
              }),
        ),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        tooltip: 'add to products',
        icon: Icon(Icons.add),
        label: Text('Add Products'),
      ),
    );
  }
}
