import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Welcome, Regan'
        ),
        actions: [
          GestureDetector(
            child: Image.asset(
              'assets/images/logout.png'
            ),
          )
        ],
      ),
    );
  }
}