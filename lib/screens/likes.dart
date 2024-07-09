import 'package:flutter/material.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 16),
          Text(
            "Likes",
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Text(
            "Hier findest Du deine gelikten",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "Nachrichten",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
