import 'package:flutter/material.dart';
import 'package:week_six/functions/details.dart';

class ScreenTwo1 extends StatefulWidget {
  const ScreenTwo1({super.key});

  @override
  State<ScreenTwo1> createState() => _ScreenTwo1State();
}

class _ScreenTwo1State extends State<ScreenTwo1> {
  int _position = 0;
  Details obj = Details();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage Store',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GridTile(
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
                                        color: obj.colors[index],
                                      ),
                                      width: 50,
                                      height: 40,
                                      child: Icon(
                                        obj.icons[index],
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      obj.text[index],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                if (index >= 6) ...[
                                  const Spacer(),
                                  Column(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          color: Colors.green,
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'NEW',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: obj.text.length,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home,
                          // color: Colors.grey,
                        ),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.shopping_bag_outlined,
                          // color: Colors.grey,
                        ),
                        label: 'Orders',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.grid_view_outlined,
                          // color: Colors.grey,
                        ),
                        label: 'Products',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.manage_search_rounded,
                          // color: Colors.blue,
                        ),
                        label: 'Manage',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person_2_outlined,
                          // color: Colors.grey,
                        ),
                        label: 'Account',
                      ),
                    ],
                    currentIndex: _position,
                    selectedItemColor: Colors.blue,
                    onTap: (value) {
                      setState(() {
                        _position = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
