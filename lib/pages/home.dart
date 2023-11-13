import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_mge_reganreinaldo/pages/list.dart';
import 'package:test_mge_reganreinaldo/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List pages = [
    ListPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5f7bcc),
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          'Welcome, Regan'
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },

            child: SvgPicture.asset(
              'assets/icons/logout.svg'
            ),
          ),
          const SizedBox(width: 10,)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color(0xff5f7bcc),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.white,
            ),
            label: 'list'
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
            ),
            label: 'profile'
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}