import 'package:flutter/material.dart';
import 'package:week4/components/buttons.dart';

class FriendsPost extends StatelessWidget {
  FriendsPost({super.key});

  final txtstyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/photo_female_1.jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mary Shaw',
                    style: txtstyle,
                  ),
                  Row(
                    children: [
                      Text('Nov. 11'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.person,
                        size: 15,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text('Time is gold')),
        SizedBox(
          height: 10,
        ),
        Image.asset('images/image_1.jpg'),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('272 comments .9 shares'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Buttons(btnTxt: 'like', iconVal: Icons.thumb_up),
            Buttons(btnTxt: 'Message', iconVal: Icons.message),
            Buttons(btnTxt: 'share', iconVal: Icons.download),
          ],
        ),
        SizedBox(
          child: Container(color: Colors.grey),
          height: 5,
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
