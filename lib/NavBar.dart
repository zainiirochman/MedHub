import 'package:flutter/material.dart';
import 'package:medhub/Cart.dart';
import 'package:medhub/Home.dart';
import 'package:medhub/Profile.dart';

class utama extends StatefulWidget {
  const utama({super.key});

  @override
  State<utama> createState() => _utamaState();
}

class _utamaState extends State<utama> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    home(),
    home(),
    home(),
    cart(),
    profile(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        selectedItemColor: Color.fromRGBO(0, 165, 155, 1),
        unselectedItemColor: Color.fromRGBO(9, 15, 71, 0.45),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined,),
            label: '',
          ),
        ],
      ),
    );
  }
}
