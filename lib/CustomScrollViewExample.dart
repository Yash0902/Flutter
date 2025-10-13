import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CustomScrollViewExample()));
}

class CustomScrollViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Scrollable App Bar
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('CustomScrollView Example'),
              background: Image.network(
                'https://picsum.photos/400/200',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Normal Box (Widget)
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              color: Colors.amber,
              alignment: Alignment.center,
              child: Text('Normal Widget Section'),
            ),
          ),

          // List of items
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                title: Text('Item #$index'),
              ),
              childCount: 10,
            ),
          ),

          // Grid Section
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                color: Colors.teal[100 * ((index % 8) + 1)],
                child: Center(child: Text('Grid $index')),
              ),
              childCount: 8,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 items per row
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
