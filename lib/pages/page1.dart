import 'package:flutter/material.dart';
import 'package:week4/components/friendcard.dart';
import 'package:week4/components/friendlist.dart';
import 'package:week4/components/friendpost.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var txtStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontSize: 20,
  );
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  dynamic output;
  @override
  void initState() {
    output = 0;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final txtstyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  final txtNumstyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  @override
  Widget build(BuildContext context) {
    void caculate(val1, val2, type) {
      setState(() {
        if (type == 'add') {
          output = val1 + val2;
        } else if (type == 'subtract') {
          output = val1 - val2;
        } else if (type == 'multiply') {
          output = val1 * val2;
        } else if (type == 'divide') {
          output = val1 / val2;
        } else {
          output = 'invalid output';
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful page1'),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/photo_male_2.jpg'),
                ),
                Text(
                  'Mark Joseph',
                  style: txtStyle,
                ),
                Text('MarkJoseph@gmail.com'),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('FOLLOWERS'),
                    Text('POSTS'),
                    Text('FOLLOWING'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '200',
                      style: txtNumstyle,
                    ),
                    Text(
                      '32',
                      style: txtNumstyle,
                    ),
                    Text(
                      '1.6k',
                      style: txtNumstyle,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        'Friends',
                        style: txtStyle,
                      ),
                    ],
                  ),
                ),
                FriendList(),
                FriendList(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        'Posts',
                        style: txtStyle,
                      ),
                    ],
                  ),
                ),
                FriendsPost(),
                FriendsPost(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
