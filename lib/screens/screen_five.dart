import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Order #1688068',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                      child: Text(
                    'May 31, 05:42',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )),
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const Divider(),
              // second row
              const Row(
                children: [
                  Expanded(
                      child: Text(
                    '1 ITEM',
                    style: TextStyle(color: Colors.grey),
                  )),
                  Icon(
                    Icons.receipt,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'RECIEPT',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // third row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    fit: BoxFit.fill,
                    'assets/images/img-3.jpg',
                    height: 80,
                    width: 80,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Explore | Men | Navy Blue'),
                      const Text(
                        '1 piece\nSize:XL',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                color:
                                    const Color.fromARGB(255, 186, 229, 249)),
                            child: const Center(
                              child: Text(
                                '1',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          const Text('x ₹799')
                        ],
                      )
                    ],
                  ),
                  const Text('₹799')
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const Divider(),
              // forth row
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Item total\nDelivery'),
                      Text(
                        'Grand Total',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('₹799'),
                      Text('FREE', style: TextStyle(color: Colors.green)),
                      Text(
                        '₹799',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
              const Divider(),
              // fifth row
              const Row(
                children: [
                  Expanded(
                      child: Text(
                    'CUSTOMER DETAILS',
                    style: TextStyle(color: Colors.grey),
                  )),
                  Icon(
                    Icons.share_outlined,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'SHARE',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deepa',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '+91-8075144682',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.telegram,
                        color: Colors.blue,
                        size: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.blue,
                        size: 35,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 7),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Address',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                      Text('D 1101 Chartered Beverly\nHills,Subramanyapura P.O')
                    ],
                  )
                ],
              ),
              const SizedBox(height: 7),
              const Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text('Banglore')
                    ],
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pincode',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text('560068')
                    ],
                  )
                ],
              ),
              const SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text('Online')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 172, 255, 174),
                        ),
                        child: const Center(
                          child: Text(
                            'PAID',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 2),
              const Divider(),
              const Row(
                children: [
                  Text(
                    'ADDITIONAL INFORMATION',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 7),
                ],
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'State',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text('Karnataka')
                    ],
                  )
                ],
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text('abc@gmail.com')
                    ],
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          foregroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          minimumSize: const Size(340, 60),
                          side: const BorderSide(color: Colors.blue)),
                      child: const Text(
                        'Share receipt',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              )
            ],

            // main coloumn end
          ),
        ));
  }
}
