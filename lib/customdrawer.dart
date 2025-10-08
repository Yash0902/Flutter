import 'package:flutter/material.dart';
class customdrawer extends StatefulWidget {
  const customdrawer({super.key});

  @override
  State<customdrawer> createState() => _customdrawerState();
}

class _customdrawerState extends State<customdrawer> {
  bool _isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main screen content
          GestureDetector(
            onTap: () {
              print("hello");
              if (_isDrawerOpen ?? false) {
                setState(() => _isDrawerOpen = false);
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              transform: Matrix4.translationValues(
                  _isDrawerOpen ? 250 : 0, 0, 0), // move when open
              child: Scaffold(
                appBar: AppBar(
                  title: const Text("Custom Drawer"),
                  leading: IconButton(
                    icon:_isDrawerOpen ? Icon(Icons.close) : Icon(Icons.menu),
                    onPressed: () {
                      setState(() => _isDrawerOpen = !_isDrawerOpen);
                    },
                  ),
                ),
                body: const Center(child: Text("Main Content")),
              ),
            ),
          ),

          // Drawer panel
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: _isDrawerOpen ? 0 : -250,
            top: 0,
            bottom: 0,
            child: Container(
              width: 250,
              color: Colors.blueGrey.shade900,
              child: SafeArea(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 40, color: Colors.black),
                    ),
                    const SizedBox(height: 20),
                    // drawerItem(Icons.home, "Home"),
                    // drawerItem(Icons.settings, "Settings"),
                    // drawerItem(Icons.logout, "Logout"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
