import 'package:flutter/material.dart';
import 'package:week_six/functions/details.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  Details details = Details();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payments',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.info_outline_rounded))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    height: 180,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Transaction Limit',
                              style: TextStyle(fontSize: 20),
                            ),
                            const Text(
                              'A free limit up to which you will receive\nthe online payments directly in your bank',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 134, 133, 133)),
                            ),
                            const SizedBox(height: 15),
                            const LinearProgressIndicator(
                              value: 0.3,
                              color: Colors.blue,
                            ),
                            const Text(
                              '₹36,668 left out of ₹50,000',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 134, 133, 133)),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 110,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.blue),
                              child: const Center(
                                child: Text(
                                  'Increase Limit',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  const SizedBox(
                    height: 35,
                    child: ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Default Method ',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 29,
                          ),
                          Text(
                            'Online Payments',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 134, 133, 133)),
                          )
                        ],
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 17,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    height: 30,
                    child: ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Payment Profile ',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'Bank Account',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 134, 133, 133)),
                          )
                        ],
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 17,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    height: 50,
                    child: ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Payment Overview ',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'Life Time',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 134, 133, 133)),
                          )
                        ],
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_down,
                        size: 25,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Card(
                          color: Color.fromRGBO(239, 108, 0, 1),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'AMOUNT ON HOLD',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '₹0',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Card(
                          color: Colors.green,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'AMOUNT RECEIVED',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '₹13,332',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    height: 50,
                    child: ListTile(
                      leading: Text(
                        'Transaction',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 235, 234, 234),
                              foregroundColor:
                                  const Color.fromARGB(255, 130, 129, 129)),
                          child: const Text('On hold')),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white),
                          child: const Text('Payouts (10)')),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 235, 234, 234),
                              foregroundColor:
                                  const Color.fromARGB(255, 130, 129, 129)),
                          child: const Text('Refund')),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 300,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Card(
                        // main column
                        child: Column(
                          children: [
                            // main row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // first column
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            fit: BoxFit.contain,
                                            details.images[index],
                                            height: 50,
                                            width: 60,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(details.order[index]),
                                            Text(details.date[index]),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // second column
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      details.amount[index],
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    ),
                                    const Icon(
                                      Icons.circle,
                                      color: Colors.green,
                                      size: 10,
                                    ),
                                    const Text(
                                      'Successful',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  details.account[index],
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 20,
                      );
                    },
                    itemCount: details.order.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
