import 'package:flutter/material.dart';

import './customer_home_screen.dart';
import './customer_chat_screen.dart';
import './customer_add_job_screen.dart';
import './customer_explore_screen.dart';
import './customer_profile_screen.dart';

class CustomerTabsScreen extends StatefulWidget {
  static const routeName = '/customerTabsScreen';

  @override
  State<CustomerTabsScreen> createState() => _CustomerTabsScreenState();
}

class _CustomerTabsScreenState extends State<CustomerTabsScreen> {
  late List<Widget> _pages;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _pages = [
      CustomerHomeScreen(),
      CustomerChatScreen(),
      CustomerAddJobScreen(),
      CustomerExploreScreen(),
      CustomerProfileScreen()
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Job',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
