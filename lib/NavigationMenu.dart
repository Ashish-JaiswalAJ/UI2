import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'HistoryPage.dart';
import 'CardsPage.dart';
import 'ProfilePage.dart';
import 'ScanPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    HistoryPage(),
    CardsPage(),
    ProfilePage(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final user=FirebaseAuth.instance.currentUser;

  singout()async{
    await FirebaseAuth.instance.signOut();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 1,
            color: Colors.black,
          ),
          BottomAppBar(
            color: Colors.white,
            child: SizedBox(
              height: 58,

              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.home_outlined, size: 30, color: _selectedIndex == 0 ? Colors.black : Colors.grey),
                      onPressed: () => _onItemTapped(0),
                    ),
                    IconButton(
                      icon: Icon(Icons.history, size: 30 , color: _selectedIndex == 1 ? Colors.black : Colors.grey),
                      onPressed: () => _onItemTapped(1),
                    ),
                    SizedBox(width: 50),
                    IconButton(
                      icon: Icon(Icons.credit_card, size: 30, color: _selectedIndex == 2 ? Colors.black : Colors.grey),
                      onPressed: () => _onItemTapped(2),
                    ),
                    IconButton(
                      icon: Icon(Icons.person_outlined, size: 30, color: _selectedIndex == 3 ? Colors.black : Colors.grey),
                      onPressed: () => _onItemTapped(3),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Colors.black,
          child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScanPage()),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}