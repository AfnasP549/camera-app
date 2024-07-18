  // ignore_for_file: camel_case_types

  import 'package:flutter/material.dart';

  class Page_3 extends StatefulWidget {
    const Page_3({Key? key}) : super(key: key);

    @override
    State<Page_3> createState() => _Page_3State();
  }

  class _Page_3State extends State<Page_3> {
    List<String> images = [
      'images/tshirt1.jpg',
      'images/tshirt2.jpeg',
      'images/tshirt3.jpeg',
      'images/tshirt2.jpeg',
      'images/tshirt2.jpeg',
      'images/tshirt2.jpeg',
      'images/tshirt2.jpeg',
      'images/tshirt2.jpeg',
      'images/tshirt2.jpeg',
      'images/tshirt2.jpeg',
    ];

    List<String> text = [
      'Order #1688068',
      'Order #168808',
      'Order #1688078',
      'Order #16880668',
      'Order #168806668',
      'Order #168806668',
      'Order #168808',
      'Order #1688068',
      'Order #168808',
      'Order #16880834',
    ];

    List<String> dates = [
      'July 12, 02:06 PM',
      'Aug 6, 10:00 AM',
      'Sep 1, 02:24 PM',
      'July 12, 02:06 PM',
      'Aug 6, 10:00 AM',
      'Sep 1, 02:24 PM',
      'July 12, 02:06 PM',
      'Aug 6, 10:00 AM',
      'Sep 1, 02:24 PM',
      'Dec 3, 3:34 PM',
    ];

    List<String> prices = [
      '₹799',
      '₹397.4',
      '₹699',
      '₹499',
      '₹599',
      '₹699',
      '₹799',
      '₹899',
      '₹799',
      '₹799',
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          automaticallyImplyLeading: false,
          title: const Center(
            child: Text(
              'Payments',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Transaction Limit',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'A free limit up to which you will receive\nthe online payments directly in your bank',
                      ),
                      const SizedBox(height: 20),
                      const LinearProgressIndicator(
                        value: 0.3,
                        color: Colors.blue,
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '36,658 out of ₹50,000',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            color: Colors.blue,
                            child: const Center(
                              child: Text(
                                'Increase limit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    'Default Method',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text('Online Payment'),
                  Icon(Icons.keyboard_arrow_right_rounded),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    'Payment Profile',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text('Bank Account'),
                  Icon(Icons.keyboard_arrow_right_rounded),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(), 
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    'Payments Overview',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text('Life Time'),
                  Icon(Icons.keyboard_arrow_down_sharp),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: 50,
                      width: 170,
                      color: Colors.orange[400],
                      child: const Center(
                        child: Text(
                          'AMOUNT ON HOLD \n ₹0',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: 50,
                      width: 170,
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          'AMOUNT RECEIVED \n ₹13,332',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Transactions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(images[index], width: 50, height: 50),
                      title: Text(text[index]),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(dates[index]),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('₹2560 deposited to 5556756'),
                            ],
                          ), 
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(prices[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:15,

                          ),),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'Successful',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      onTap: () {
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
