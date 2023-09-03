//import 'dart:js';
import 'package:classico/Portfolio/projects.dart';
import 'package:classico/WS%20cubetech/add_img.dart';
import 'package:flutter/material.dart';
import 'package:classico/Portfolio/about.dart';
import 'home.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false ,
    routes: {
      'home': (context) => MyHome(),
      'about': (context) => MyAbout(),
      'projects':(context) => MyProjects()
    },
  ));
}