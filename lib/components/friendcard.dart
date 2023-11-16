import 'package:flutter/material.dart';

class FriendCard extends StatelessWidget {
  FriendCard({super.key, required this.name, required this.imageData});
  final String name;
  final String imageData;

  final txtstyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            imageData,
            width: 120,
            height: 120,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: txtstyle,
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
