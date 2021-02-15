import 'package:flutter/material.dart';
import 'package:flutterMVCAPI/views/home.dart';

void main() {
  runApp(MyApp());
}

//deda1082244c4975bbebda2889310f06
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVC Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
