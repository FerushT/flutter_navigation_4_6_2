import 'package:flutter/material.dart';
import 'package:flutter_navigation_4_6_2/screens/likes.dart';
import 'package:flutter_navigation_4_6_2/screens/news.dart';
import 'package:flutter_navigation_4_6_2/screens/profile.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

int currentIndex = 0;

List<Widget> screens = [
  const NewsScreen(),
  const LikesScreen(),
  const ProfileScreen(),
];

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: const Text("My App"),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        indicatorColor: Colors.lime,
        selectedIndex: currentIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.newspaper), label: "News"),
          NavigationDestination(icon: Icon(Icons.favorite), label: "Likes"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
