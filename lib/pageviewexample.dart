import 'package:flutter/material.dart';

class Pageviewexample extends StatefulWidget {
  const Pageviewexample({super.key});

  @override
  State<Pageviewexample> createState() => _PageviewexampleState();
}

class _PageviewexampleState extends State<Pageviewexample> {

  PageController _controller = PageController(initialPage: 0);
  bool _isHorizontal = true;
  bool _pageSnapping = true;
  bool _padEnds = true;
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Interactive PageView"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              scrollDirection: _isHorizontal ? Axis.horizontal : Axis.vertical,
              controller: _controller,
              pageSnapping: _pageSnapping,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              padEnds: _padEnds,
              children: List.generate(5, (index) {
                return Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.primaries[index % Colors.primaries.length],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Page ${index + 1}",
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 16),
          Text("Current Page: ${_currentPage + 1}"),
          SizedBox(height: 16),
          Wrap(
            spacing: 10,
            children: [
              ElevatedButton(
                onPressed: () {
                  _controller.previousPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text("Previous"),
              ),
              ElevatedButton(
                onPressed: () {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text("Next"),
              ),
              ElevatedButton(
                onPressed: () {
                  _controller.jumpToPage(2);

                },
                child: Text("Jump to Page 3"),
              ),
            ],
          ),
          SizedBox(height: 16),
          Wrap(
            spacing: 10,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isHorizontal = !_isHorizontal;
                  });
                },
                child: Text(_isHorizontal ? "Switch to Vertical" : "Switch to Horizontal"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _pageSnapping = !_pageSnapping;
                  });
                },
                child: Text(_pageSnapping ? "Disable Snapping" : "Enable Snapping"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _padEnds = !_padEnds;
                  });
                },
                child: Text(_padEnds ? "Disable Pad Ends" : "Enable Pad Ends"),
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(title: Text("Page View Example")),
    //   body: PageView(
    //     // scrollDirection: Axis.vertical,
    //     // reverse: true,
    //
    //     physics:BouncingScrollPhysics(),
    //     pageSnapping: true,
    //     allowImplicitScrolling: true,
    //     onPageChanged: (index)=>print("index $index"),
    //     controller: _controller,
    //     padEnds: true,
    //
    //
    //
    //
    //
    //
    //     children: [
    //       Center(
    //         child: Text("Swipe >>"),
    //       ),
    //       Container(
    //
    //         color: Colors.red,
    //         child: Center(child: Text('Page 1')),
    //       ),
    //       Container(
    //
    //         color: Colors.green,
    //         child: Center(child: Text('Page 2')),
    //       ),
    //       Container(
    //
    //         color: Colors.blue,
    //         child: Center(child: Text('Page 3')),
    //       ),
    //       Center(
    //          child: Text("End.........."),
    //       )
    //     ],
    //   ),
    // );
  }
}
