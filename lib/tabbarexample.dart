import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Tabbarexample extends StatefulWidget {
  const Tabbarexample({super.key});

  @override
  State<Tabbarexample> createState() => _TabbarexampleState();
}

class _TabbarexampleState extends State<Tabbarexample> {
  final PageController _controller = PageController();
  int _selectedindex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Home Page', style: TextStyle(fontSize: 30))),
    Center(child: Text('Search Page', style: TextStyle(fontSize: 30))),
    Center(child: Text('Profile Page', style: TextStyle(fontSize: 30))),
    Center(child: Text('Setting Page', style: TextStyle(fontSize: 30))),
  ];

  final List<String> _images = [
    'https://picsum.photos/800/300?1',
    'https://picsum.photos/800/300?2',
    'https://picsum.photos/800/300?3',
  ];

  int _currentPage = 0;
  Timer? _timer;

  void initState() {
    super.initState();

    // Auto scroll timer
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Duration(seconds: 1),
      initialIndex: 1,
      length: _pages.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar", style: TextStyle(color: Colors.grey)),
          // backgroundColor: Colors.black,
          bottom: TabBar(
            dividerColor: Colors.transparent,

            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.tab,

            automaticIndicatorColorAdjustment: true,
            tabAlignment: TabAlignment.start,
            dragStartBehavior: DragStartBehavior.start,

            isScrollable: true,

            labelStyle: TextStyle(fontSize: 16),
            onTap: (index) {
              setState(() {
                print(index);
                _selectedindex = index;
              });
            },
            labelColor: Colors.green,

            splashFactory: NoSplash.splashFactory,

            overlayColor: WidgetStatePropertyAll(Colors.transparent),

            unselectedLabelColor: Colors.grey,

            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 3, color: Colors.green),
            ),

            tabs: const [
              Tab(text: 'Home'),
              Tab(text: 'Search'),
              Tab(text: 'Profile'),
              Tab(text: 'Settings'),
              Tab(text: 'Account'),
              Tab(text: 'call'),
              Tab(text: "Missed"),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            height: 200,
            child: PageView.builder(
              controller: _controller,
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius:BorderRadius.circular(20),
                  child: Image.network(
                    alignment: Alignment.center,
                    _images[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
