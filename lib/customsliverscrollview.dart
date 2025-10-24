import 'package:flutter/material.dart';
class Customsliverscrollview extends StatefulWidget {
  const Customsliverscrollview({super.key});

  @override
  State<Customsliverscrollview> createState() => _CustomsliverscrollviewState();
}

class _CustomsliverscrollviewState extends State<Customsliverscrollview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:DefaultTabController(
          length: 3,
          child: Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  expandedHeight: 200,
                  flexibleSpace: FlexibleSpaceBar(title: Text("Tabs AppBar")),
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.home)),
                      Tab(icon: Icon(Icons.star)),
                      Tab(icon: Icon(Icons.person)),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  child: TabBarView(
                    children: [
                      Center(child: Text("Home Tab")),
                      Center(child: Text("Star Tab")),
                      Center(child: Text("Profile Tab")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
           // slivers: [
           //   SliverAppBar(
           //
           //     leading: Icon(Icons.person),
           //     pinned: true,
           //     expandedHeight: 100,
           //     flexibleSpace: FlexibleSpaceBar(
           //       collapseMode: CollapseMode.parallax,
           //       title: Text('Sliver AppBar'),
           //       background: Image.network(
           //         'https://picsum.photos/400/200',
           //         fit: BoxFit.cover,
           //
           //       ),
           //     ),
           //   ),
           //
           //   // SliverList
           //   SliverList(
           //     delegate: SliverChildBuilderDelegate(
           //           (context, index) => Container(
           //         height: 100,
           //         color: Colors.blue[(index % 9 + 1) * 100],
           //         child: Center(child: Text('Item ${index + 1}')),
           //       ),
           //       childCount: 20,
           //     ),
           //   ),
           //
           //   // SliverGrid
           //   SliverGrid(
           //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           //       crossAxisCount: 2,
           //       mainAxisSpacing: 10,
           //       crossAxisSpacing: 10,
           //       childAspectRatio: 1.0,
           //     ),
           //     delegate: SliverChildBuilderDelegate(
           //           (context, index) => Container(
           //         color: Colors.green[(index % 9 + 1) * 100],
           //       ),
           //       childCount: 8,
           //     ),
           //   ),
           //
           //   SliverToBoxAdapter(
           //     child: Container(
           //       height: 100,
           //       color: Colors.orange,
           //       child: Center(child: Text("Normal Widget")),
           //     ),
           //   )
           //
           // ],
          // slivers: [
          //   SliverAppBar(
          //     floating: true,
          //     snap: true,
          //     pinned: true,
          //     expandedHeight: 200,
          //     flexibleSpace: FlexibleSpaceBar(
          //
          //       title: Text("Basic SliverAppBar"),
          //
          //     ),
          //   ),
          //   SliverList(
          //     delegate: SliverChildBuilderDelegate(
          //           (context, index) => ListTile(title: Text("Item ${index + 1}")),
          //       childCount: 20,
          //     ),
          //   ),
          // ],

    );
  }
}
