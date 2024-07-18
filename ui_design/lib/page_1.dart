// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class page_1 extends StatefulWidget {
  const page_1({super.key});

  @override
  State<page_1> createState() => _page_1State();
}

class _page_1State extends State<page_1> {
  bool _whatsappEnabled = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Additional information',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.share),
            title: Text(
              'Share Dukaan App',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          const ListTile(
            leading: Icon(Icons.messenger_outline_outlined),
            title: Text(
              'Change Language',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),


          ListTile(
            leading: const Icon(FontAwesomeIcons.whatsapp),
            title: const Text(
              'Whatsapp Chat Support',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Switch(
              activeColor: Colors.blue,
              value: _whatsappEnabled,
              onChanged: (value) {
                setState(() {
                  _whatsappEnabled = value;
                });
              },
            ),
          ),


          const ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 20),
            ),
          ),


          const ListTile(
            leading: Icon(Icons.star_border_rounded),
            title: Text(
              'Rate Us',
              style: TextStyle(fontSize: 20),
            ),
          ),



          const ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Sign Out',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

