


import 'package:flutter/material.dart';
import 'package:ui_design/page_1.dart';
import 'package:ui_design/Home.dart';
import 'package:ui_design/page_2.dart';
import 'package:ui_design/page_3.dart';
import 'package:ui_design/page_4.dart';
import 'package:ui_design/page_5.dart';
import 'package:ui_design/page_6.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column( 
            children: [
              
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const page_1()));
              }, child: const Text('Page_1')),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page_2()));
              }, child: Text('Page_2')),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page_3()));
              }, child: Text('Page_3')),
               ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => page_4()));
              }, child: Text('Page_4')),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => page_5()));
              }, child: Text('Page_5')),
               ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page6()));
              }, child: Text('Page_6')),
            ],
          ),
        ),
      ),
    );
  }
}