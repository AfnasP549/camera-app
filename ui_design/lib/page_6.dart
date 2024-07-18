import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Page6({Key? key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  bool bttn = false;
  List<String> images = [
    'images/couch-potato--red.webp',
    'images/white.jpeg',
    'images/mug.webp',
    'images/compbo pack.jpeg',
    'images/mug2.jpeg',
    'images/combo.jpeg',
    'images/combo2.jpeg',
    'images/kids compb.jpeg',
  ];

  List<String> itemName = [
    'Couch Potato | Women',
    'Couch Potato | Men',
    'Mug | Explore',
    'Combo pack',
    'Mug',
    'Combo',
    'Combo pack',
    'Kids Combo',
  ];
  List<String> mrp = [
    '₹799',
    '₹799',
    '₹399',
    '₹699',
    '₹499',
    '₹699',
    '₹1299',
    '₹799'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Removes back button
          backgroundColor: Colors.blue,
          title: const Text(
            'Catalogue',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.search, color: Colors.white),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Products'),
              Tab(text: 'Categories'),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  images[index],
                                  height: 60,
                                  width: 60,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    itemName[index],
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Text('1 piece'),
                                  Text(
                                    mrp[index],
                                    style: const TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'In stock',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ],
                              ),
                            ),
                            const Column(children: [
                            ],),
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      const Icon(Icons.more_vert),
                                      Switch(value: bttn,activeColor: Colors.blue,
                                       onChanged: (value){
                                        setState(() {
                                          bttn=value;
                                        });
                                       })
                                  
                                  ],),
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                        const Divider(),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.share_outlined,
                            size: 30,),
                            Text('Share Product',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
                          ],
                        ),

                      ],
                    ),
                    
                  ),
                );
              
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
            const Center(child: Text('Content for Categories')),
          ],
        ),
      ),
    );
  }
}
