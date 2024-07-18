import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class Page_2 extends StatefulWidget {
  const Page_2({super.key});
  @override
  State<Page_2> createState() => _Page_1State();
}

// ignore: camel_case_types
class _Page_1State extends State<Page_2> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text('Home Page')),
    const Center(child: Text('Account Page')),
    const Center(child: Text('Contact Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 240, 240),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
            child: Text(
          'Manage Store',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
        )),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          //main column
          children: [
            Row(
              //first main row
              children: [
                Flexible(
                  child: Card(
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const IconTheme(
                                  data: IconThemeData(color: Colors.white),
                                  child: Icon(Icons.campaign_outlined),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Marketing ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                'Designs ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Flexible(
                  child: Card(
                    //second card
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.green[200],
                                    borderRadius: BorderRadius.circular(10)),
                                child: const IconTheme(
                                  data: IconThemeData(color: Colors.white),
                                  child: Icon(Icons.currency_rupee),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Online ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                'Payments ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              //Second main row
              children: [
                Flexible(
                  child: Card(
                    //third card
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.orange[200],
                                    borderRadius: BorderRadius.circular(10)),
                                child: const IconTheme(
                                  data: IconThemeData(color: Colors.white),
                                  child: Icon(Icons.percent_outlined),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Discount ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                'Coupons ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Flexible(
                  child: Card(
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const IconTheme(
                                  data: IconThemeData(color: Colors.white),
                                  child: Icon(Icons.supervisor_account),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                'My ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                'Customers ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              //third main row
              children: [
                Flexible(
                  child: Card(
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 109, 106, 106),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const IconTheme(
                                  data: IconThemeData(color: Colors.white),
                                  child: Icon(Icons.qr_code),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Store QR ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                'Code ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Flexible(
                  child: Card(    //extra charges
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.purple[200],
                                    borderRadius: BorderRadius.circular(10)),
                                child: const IconTheme(
                                  data: IconThemeData(color: Colors.white),
                                  child: Icon(Icons.monetization_on ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Extra',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                'Charges ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),



            const SizedBox(
              height: 20,
            ),
            Row(
              //last main row
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 210),
                    child: Card(
                      elevation: 4.0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(      
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,                       
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 191, 48, 96),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const IconTheme(
                                    data: IconThemeData(color: Colors.white),
                                    child: Icon(Icons.format_align_left),
                                  ),
                                ),
                                Container(
                                  //color: Colors.green[400],
                                  height: 25,
                                  width: 60,
                                   decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 86, 232, 117),
                                      borderRadius: BorderRadius.circular(10)),
                                      child: const Center(
                                        child: Text('New',
                                        style: TextStyle(
                                          color: Colors.white
                                        
                                        ),),
                                      ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Order ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Form ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomNavigationBar(
            backgroundColor: Colors.blue,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem( 
                icon: Icon(Icons.home_outlined,
                color: Color.fromARGB(255, 99, 96, 96),
                ),
                label: 'Home'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.currency_rupee_outlined,
                color: Color.fromARGB(255, 99, 96, 96),
                ),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.apps,
                color: Color.fromARGB(255, 99, 96, 96),
                ),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_sharp,
                color: Color.fromARGB(255, 99, 96, 96),
                ),
                label: 'Manage',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_4_outlined,
                color: Color.fromARGB(255, 99, 96, 96),
                ),
                label: 'Contact',
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
