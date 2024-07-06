import 'package:flutter/material.dart';
import 'package:week_six/functions/details.dart';

class ScreenSix extends StatefulWidget {
  const ScreenSix({super.key});

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix> {
  bool on = false;
  Details obj = Details();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Catalogue',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          iconTheme: const IconThemeData(color: Colors.white),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Text(
                'Products',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                'Categories',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
          ),
        ),
        body: TabBarView(
          children: [
            products(), // Add the products list here
            const Center(child: Text('Categories Tab')),
          ],
        ),
      ),
    );
  }

  products() {
    return ListView.builder(
        itemCount: obj.product_name.length,
        itemBuilder: (context, index) {
          return Card(
              // main column
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        obj.product_images[index],
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          obj.product_name[index],
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          '1 Piece',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(obj.product_price[index]),
                        const Text(
                          'In Stock',
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                    if (index >= 2) const SizedBox(width: 7),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                        ),
                        Switch(
                            activeColor: Colors.blue,
                            value: on,
                            onChanged: (value) {
                              setState(() {
                                on = value;
                              });
                            })
                      ],
                    )
                  ],
                ),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.share_outlined),
                    Text('Share Products'),
                  ],
                )
              ],
            ),
          ));
        });
  }
}
