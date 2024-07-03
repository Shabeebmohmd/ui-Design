import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage Store',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Center(
          child: Column(
            children: [
              buildRow(
                [
                  buildCard(
                    Colors.amber[900]!,
                    Icons.campaign,
                    'Marketing\nDesigns',
                  ),
                  buildCard(
                    Colors.green,
                    Icons.currency_rupee,
                    'Online\nPayments',
                  ),
                ],
              ),
              buildRow(
                [
                  buildCard(
                    Colors.amber[400]!,
                    Icons.discount,
                    'Discount\nCoupons',
                  ),
                  buildCard(
                    Colors.teal[300]!,
                    Icons.person,
                    'My\nCustomers',
                  ),
                ],
              ),
              buildRow(
                [
                  buildCard(
                    Colors.grey,
                    Icons.qr_code_sharp,
                    'Store QR\nCode',
                  ),
                  buildCard(
                    const Color.fromARGB(255, 132, 51, 230),
                    Icons.currency_rupee,
                    'Extra\nCharges',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Row(
                  children: [
                    SizedBox(
                      height: 110,
                      width: 170,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color.fromARGB(
                                        255,
                                        187,
                                        19,
                                        151,
                                      ),
                                    ),
                                    width: 50,
                                    height: 40,
                                    child: const Icon(
                                      Icons.notes_rounded,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Order\nForm',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.green,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'NEW',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home,
                          color: Colors.grey,
                        ),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.grey,
                        ),
                        label: 'Orders',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.grid_view_outlined,
                          color: Colors.grey,
                        ),
                        label: 'Products',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.manage_search_rounded,
                          color: Colors.blue,
                        ),
                        label: 'Manage',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person_2_outlined,
                          color: Colors.grey,
                        ),
                        label: 'Account',
                      ),
                    ],
                    currentIndex: 3,
                    selectedItemColor: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildRow(List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: children,
      ),
    );
  }

  buildCard(Color color, IconData icon, String text) {
    return SizedBox(
      height: 110,
      width: 170,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: color,
                ),
                width: 50,
                height: 40,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
