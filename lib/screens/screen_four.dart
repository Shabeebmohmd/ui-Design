import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  final videoURL = 'https://youtu.be/1NnRlUGMPLU?si=8xb3mhp4PZnOEE4';
  late YoutubePlayerController _controller;
  bool textVisible = false;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 130,
                  child: AppBar(
                    backgroundColor: Colors.blue,
                    title: const Text(
                      'Dukaan Premium',
                      style: TextStyle(color: Colors.white),
                    ),
                    centerTitle: true,
                    iconTheme: const IconThemeData(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 65,
                ),
                const ListTile(
                  leading: Text(
                    'Features',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.language,
                    size: 55,
                    color: Colors.teal,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Custom domain name',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Get your own custom domain and build \nyour brand on the internet',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.verified_outlined,
                    size: 55,
                    color: Colors.teal,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verified seller badge',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Get green verified badge under your store and build trust',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.laptop,
                    size: 55,
                    color: Colors.teal,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dukaan for PC',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Access all the exclusive premium\nfeatures on Dukaan for PC',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.headphones,
                    size: 55,
                    color: Colors.teal,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priority support',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Get your questions resolved with our priority customer support',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 24,
                    child: Text(
                      'What is Dukaan Premium?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                  ),
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  child: SizedBox(
                    width: double.infinity,
                    height: 24,
                    child: Text(
                      'Frequently asked questions',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                ListTile(
                  title: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What types of businesses can use Dukaan Premium?',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(textVisible ? Icons.minimize : Icons.add),
                    onPressed: () {
                      setState(() {
                        textVisible = !textVisible;
                      });
                    },
                  ),
                ),
                if (textVisible)
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online, Dukaan is the perfect platform for you.',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'What is your refund policy?',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 108,
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add)),
                          const Divider(),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Text(
                            'Will there be an automatic charge after the\npaid trial?',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add)),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Text(
                            'What payment methods do you offer?',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add)),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Text(
                            'What happens when my free trial ends?',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add)),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Text(
                            'What are the terms for the custom domain?',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add)),
                        ],
                      ),
                      const Divider(),
                      const Divider(
                        thickness: 3,
                      ),
                      Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Need help? Get in touch',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 150,
                                height: 70,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 13,
                                      ),
                                      Icon(Icons.message_outlined),
                                      Text('Live Chat')
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 70,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 13,
                                      ),
                                      Icon(Icons.call),
                                      Text('Phone Call')
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text('Select Domain',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800))),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7))),
                                child: const Text('Get Premium'),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 65,
              left: 18,
              child: SizedBox(
                height: 140,
                width: 350,
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset(
                          fit: BoxFit.fill,
                          'assets/images/logo.png',
                          width: 170,
                          height: 50,
                        ),
                        const Text(
                          '''Get Dukaan Premium for just
                ₹4,999/year''',
                          style: TextStyle(fontSize: 16),
                        ),
                        const Text(
                          '''All the advanced features for scaling your
                             business.''',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
