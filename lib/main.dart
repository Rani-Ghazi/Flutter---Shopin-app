import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(MaterialApp(
    title: 'SHOPIN',
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
