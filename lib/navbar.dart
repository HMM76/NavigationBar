import "package:bottombar/Pages/chat.dart";
import "package:bottombar/Pages/feed.dart";
import "package:bottombar/Pages/home.dart";
import "package:bottombar/Pages/profile.dart";
import "package:flutter/material.dart";

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    ChatPage(),
    FeedPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
         label: "Home",
         backgroundColor: Colors.black),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
           label: "Chat",
           backgroundColor: Colors.black),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_rounded),
           label: "Feed",
           backgroundColor: Colors.black),
           BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_rounded),
           label: "Profile",
           backgroundColor: Colors.black),
      ]),
    );
  }
}