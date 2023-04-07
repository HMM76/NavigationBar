import 'package:flutter/material.dart';
class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text("Feed", style: TextStyle(fontSize: 20),)),
        backgroundColor: Colors.red,
    );
  }
}