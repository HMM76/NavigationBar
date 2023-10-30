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
    const HomePage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 249, 114, 3),
          currentIndex: currentIndex,
          onTap: (index) => setState(() {
            currentIndex = index;
          }),
          items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
           label: "Home",
           backgroundColor: Color.fromARGB(255, 249, 114, 3)),
             BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
             label: "Profile",
             backgroundColor: Color.fromARGB(255, 249, 114, 3)),
        ]),
      ),
    );
  }
}