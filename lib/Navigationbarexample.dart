import 'package:flutter/material.dart';

class Navigationbarexample extends StatefulWidget {
  const Navigationbarexample({super.key});

  @override
  State<Navigationbarexample> createState() => _NavigationbarexampleState();
}

class _NavigationbarexampleState extends State<Navigationbarexample> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Home Page', style: TextStyle(fontSize: 30))),
    Center(child: Text('Search Page', style: TextStyle(fontSize: 30))),
    Center(child: Text('Profile Page', style: TextStyle(fontSize: 30))),
    Center(child: Text('Setting Page', style: TextStyle(fontSize: 30))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Bar Example")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,

        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
            tooltip: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            selectedIcon: Icon(Icons.settings),
            label: 'Setting',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],

        animationDuration: Duration(seconds: 1),
        elevation: 5,

        // shadowColor: Colors.black,
        surfaceTintColor: Colors.red,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        labelTextStyle: MaterialStateTextStyle.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            );
          }
          return TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          );
        }),
        indicatorColor: Colors.blue.shade100,
        // backgroundColor: Colors.yellow,
        indicatorShape: CircleBorder(),
      ),
    );
  }
}
