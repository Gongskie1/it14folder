import 'package:flutter/material.dart';
import 'package:week4/components/friendcard.dart';

class FriendList extends StatelessWidget {
  const FriendList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FriendCard(name: 'Sam Sepiol', imageData: 'images/photo_male_1.jpg'),
        FriendCard(name: 'Sam Sepiol', imageData: 'images/photo_male_2.jpg'),
        FriendCard(name: 'Sam Sepiol', imageData: 'images/photo_male_4.jpg'),
      ],
    );
  }
}
