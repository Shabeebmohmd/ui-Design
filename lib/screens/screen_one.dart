import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});
  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  bool on = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Additional Information',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.share_outlined),
            title: Text('Share Dukaan App'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: FaIcon(FontAwesomeIcons.message),
            title: Text('Change Language'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
              leading: const FaIcon(FontAwesomeIcons.whatsapp),
              title: const Text('WhatsApp Chat Support'),
              trailing: Switch(
                  activeColor: Colors.blue,
                  value: on,
                  onChanged: (value) {
                    setState(() {
                      on = value;
                    });
                  })),
          const ListTile(
            leading: Icon(Icons.lock_outlined),
            title: Text('Privacy Policy'),
          ),
          const ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Rate us'),
          ),
          const ListTile(
            leading: FaIcon(FontAwesomeIcons.arrowRightFromBracket),
            title: Text('Privacy Policy'),
          ),
          const Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Version', style: TextStyle(color: Colors.grey)),
              Text('2.4.2',
                  style: TextStyle(color: Color.fromARGB(255, 92, 92, 92)))
            ],
          ))
        ],
      ),
    );
  }
}
