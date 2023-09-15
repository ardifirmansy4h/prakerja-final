import 'package:flutter/material.dart';
import 'package:final_prakerja/home.dart';
import 'package:final_prakerja/sign-in.dart';
import 'package:final_prakerja/topics.dart';

class Navigate extends StatefulWidget {
  const Navigate({super.key});

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  List listScreen = const [
    HomeNews(),
    Topics(),
    SignIn(),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen[index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedItemColor: Colors.red,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
