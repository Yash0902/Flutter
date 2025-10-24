import 'package:flutter/material.dart';

class Textexample extends StatefulWidget {
  const Textexample({super.key});

  @override
  State<Textexample> createState() => _TextexampleState();
}

class _TextexampleState extends State<Textexample> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       bottomNavigationBar: NavigationBar(
           destinations:[
              // NavigationDestination(icon: Icon(), label:"hello")
           ]
       ),
      // bottomNavigationBar: BottomNavigationBar(
      //   // type:BottomNavigationBarType.shifting,
      //   currentIndex: selectedindex,
      //   selectedItemColor: Colors.red,
      //   elevation: 8,
      //   selectedIconTheme: IconThemeData(shadows: [], grade: 48, size: 30),
      //   selectedFontSize: 15,
      //   showSelectedLabels: true,
      //   showUnselectedLabels: false,
      //
      //   onTap: (index) {
      //     setState(() {
      //       selectedindex = index;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //   ],
      // ),
    );
  }
}
