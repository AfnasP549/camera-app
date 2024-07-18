import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class page_4 extends StatefulWidget {
  const page_4({Key? key}) : super(key: key);

  @override
  State<page_4> createState() => _Page4State();
}

class _Page4State extends State<page_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text('Dukaan Premium')),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    color: const Color.fromARGB(255, 65, 148, 243),
                    height: 50,
                    width: double.infinity,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/Dukaan (2).png'),
                            const Text(
                              'Get Dukaan Premium for just ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            const Text('₹4,999/year',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                            const Text(
                                'All the advanced features for scaling your',
                                style: TextStyle(fontWeight: FontWeight.w300)),
                            const Text('business',
                                style: TextStyle(fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Features',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.globe),
                    Padding(
                      padding: EdgeInsets.only(left: 20,bottom: 10),
                      child: Text('Custom domain name',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                    )
                  ],
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50,bottom: 20),
                    child: Text('Get your own custom domain and build \n your brand on the internet'),
                  )
                ],
              ),



              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.check_circle_outlined),
                    Padding(
                      padding: EdgeInsets.only(left: 20,bottom: 10),
                      child: Text('Verified seller badge ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                    )
                  ],
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50,bottom: 20),
                    child: Text('Get green verified badge under your\n store name and build trust'),
                  )
                ],
              ),





              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.laptop),
                    Padding(
                      padding: EdgeInsets.only(left: 20,bottom: 10),
                      child: Text('Dukaan for PC',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                    )
                  ],
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50,bottom: 20),
                    child: Text('Access all the exclusive premium\n features on Dukaan for PC'),
                  )
                ],
              ),


const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.headset_mic_rounded),
                    Padding(
                      padding: EdgeInsets.only(left: 20,bottom: 10),
                      child: Text('Priority support',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                    )
                  ],
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50,bottom: 20),
                    child: Text('Get your questions resolved with our \n priority customer service '),
                  )
                ],
              ),

              const Divider(),

              const SizedBox(height: 10,),
              const Text('What is Dukaan Premium?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),),
              const SizedBox(height: 10,),
              Image.asset('images/Youtube_Dukaan.png'),

             const Divider(),

             const Padding(
               padding: EdgeInsets.all(12.0),
               child: Text('Frequently asked questions',
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
               ),),
             ),

             const Padding(
               padding: EdgeInsets.all(12.0),
               child: const Text('What type of businesses can use Dukaan \nPremium',
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
               ),),
             ),

             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text('Dukaan carters is a wide variety of sellers. Be it a\n small grocery store or a big lagacy brand-anyone\nwho wants to sell their products/services online\nDukaan is the perfect platform for you.',
               style: TextStyle(
                fontSize: 15,
               ),),
             ),
             const Divider(),

             const ListTile(
              title: Text('What is your policy?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.add),
             ),
             const Divider(),

              const ListTile(
              title: Text('Will there be an automatic charger after the\npaid trail?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.add),
             ),
             const Divider(),

              const ListTile(
              title: Text('What payment methods do uoy offer?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.add),
             ),
             const Divider(),

              const ListTile(
              title: Text('What happens when my free trail ends?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.add),
             ),
             const Divider(),

              const ListTile(
              title: Text('What are the terms for the custom domain?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.add),
             ),
             const Divider(),

             const SizedBox(height: 10,),

             const Text('Need help? Get in touch',
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
             ),),

             const SizedBox(height: 10,),

             Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)
                    ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.chat_bubble_outline_outlined,
                          size: 50,),
                           SizedBox(height: 10),
                            Text(
                              'Live Chat',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                        ],
                      ),
                     
                    
                    ),
                  ),
                ),

                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)
                    ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone,
                          size: 50,),
                           SizedBox(height: 10),
                            Text(
                              'Phone Call',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
             ),

             Divider(),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextButton(onPressed: (){}, 
                  style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                  child: Text('Select Domain',
                  style: TextStyle(
                    color: Colors.black,
                  ),)),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextButton(onPressed: (){}, 
                  style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                  child: Text('Get Premium',
                  style: TextStyle(
                    color: Colors.black,
                  ),)),
                )
              ],
             )


            ],
          ),
        ],
      ),
    );
  }
}
