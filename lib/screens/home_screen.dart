import 'package:flutter/material.dart';
import 'package:week_six/screens/screen_five.dart';
import 'package:week_six/screens/screen_four.dart';
import 'package:week_six/screens/screen_one.dart';
import 'package:week_six/screens/screen_six.dart';
import 'package:week_six/screens/screen_three.dart';
// import 'package:week_six/screens/screen_two.dart';
import 'package:week_six/screens/screen_two1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Choose a screen',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black87,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // button one
                Padding(
                  padding: const EdgeInsets.all(17),
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenOne())),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      'Screen 1',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                // button two
                Padding(
                  padding: const EdgeInsets.all(17),
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenTwo1())),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      'Screen 2',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                // button three
                Padding(
                  padding: const EdgeInsets.all(17),
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenThree())),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      'Screen 3',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                // button four
                Padding(
                  padding: const EdgeInsets.all(17),
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenFour())),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      'Screen 4',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                // button five
                Padding(
                  padding: const EdgeInsets.all(17),
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenFive())),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      'Screen 5',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                // button six
                Padding(
                  padding: const EdgeInsets.all(17),
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenSix())),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      'Screen 6',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
