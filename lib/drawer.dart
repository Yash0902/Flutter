// import 'package:flutter/material.dart';
//
// class drawer extends StatefulWidget {
//   const drawer({super.key});
//
//   @override
//   _drawerState createState() => _drawerState();
// }
//
// class _drawerState extends State<drawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("DrawerExample")),
//       drawer: Drawer(
//         // child: Container(
//         //   width: double.infinity,
//         //   child: Column(children: [Container(), ListView()]),
//         // ),
//         // width: 340,
//         // backgroundColor: Colors.blue.shade300,
//         // // surfaceTintColor: Colors.red,
//         // elevation: 8.0,
//         // shadowColor: Colors.black54,
//         // shape: RoundedRectangleBorder(
//         //   borderRadius: BorderRadius.only(
//         //     topRight: Radius.circular(50),
//         //     bottomRight: Radius.circular(50),
//         //   ),
//         // ),
//         // child: UserAccountsDrawerHeader(
//         //   accountName: Text("1234567"),
//         //   accountEmail: Text("yashrathore@gmail.com"),
//         //   margin: EdgeInsets.only(bottom: 0),
//         //   otherAccountsPictures: [
//         //     CircleAvatar(
//         //       backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=4'),
//         //     ),
//         //     CircleAvatar(
//         //       backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=5'),
//         //     ),
//         //   ],
//         //   onDetailsPressed: () {
//         //
//         //   },
//         //   arrowColor: Colors.yellow,
//         //   otherAccountsPicturesSize: Size(100, 100),
//         //   decoration: BoxDecoration(color: Color(0xFFFF5733)),
//         // ),
//
//         // children: [
//         //   const DrawerHeader(
//         //     decoration: BoxDecoration(
//         //       color: Colors.green,
//         //     ),
//         //     child: UserAccountsDrawerHeader(
//         //       decoration: BoxDecoration(color: Colors.green),
//         //       accountName: Text(
//         //         "Abhishek Mishra",
//         //         style: TextStyle(fontSize: 18),
//         //       ),
//         //       accountEmail: Text("abhishekm977@gmail.com"),
//         //       currentAccountPictureSize: Size.square(50),
//         //       currentAccountPicture: CircleAvatar(
//         //         backgroundColor: Color.fromARGB(255, 165, 255, 137),
//         //         child: Text(
//         //           "A",
//         //           style: TextStyle(fontSize: 30.0, color: Colors.blue),
//         //         ),
//         //       ),
//         //     ),
//         //   ),
//         //   ListTile(
//         //     leading: const Icon(Icons.person),
//         //     title: const Text(' My Profile '),
//         //     onTap: () {
//         //       Navigator.pop(context);
//         //     },
//         //   ),
//         //   ListTile(
//         //     leading: const Icon(Icons.book),
//         //     title: const Text(' My Course '),
//         //     onTap: () {
//         //       Navigator.pop(context);
//         //     },
//         //   ),
//         //   ListTile(
//         //     leading: const Icon(Icons.workspace_premium),
//         //     title: const Text(' Go Premium '),
//         //     onTap: () {
//         //       Navigator.pop(context);
//         //     },
//         //   ),
//         //   ListTile(
//         //     leading: const Icon(Icons.video_label),
//         //     title: const Text(' Saved Videos '),
//         //     onTap: () {
//         //       Navigator.pop(context);
//         //     },
//         //   ),
//         //   ListTile(
//         //     leading: const Icon(Icons.edit),
//         //     title: const Text(' Edit Profile '),
//         //     onTap: () {
//         //       Navigator.pop(context);
//         //     },
//         //   ),
//         //   ListTile(
//         //     leading: const Icon(Icons.logout),
//         //     title: const Text('LogOut'),
//         //     onTap: () {
//         //       Navigator.pop(context);
//         //     },
//         //   ),
//         // ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Text('HOME PAGE', style: optionStyle),
    Text('COURSE PAGE', style: optionStyle),
    Text('CONTACT GFG', style: optionStyle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text("Drawer")),
      drawer: Drawer(
        width: 325,
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(13),
                  width: double.infinity,
                  height: 20,
                  color: Colors.blue,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 20,
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 40,
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Yash Rathore"),
                            Text("yashrathore@gmail.com"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blue.shade100,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.book),
                        title: const Text(' My Course '),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child:_widgetOptions.elementAt(_selectedIndex),
      // ),
      //

      // floatingActionButton: FloatingActionButton(
      //   // autofocus: true,
      //   // highlightElevation: 3,
      //   //  disabledElevation: 6,
      //   backgroundColor: Colors.blue,
      //   foregroundColor: Colors.black,
      //   // focusColor: Colors.lightBlueAccent,
      //   // hoverColor: Colors.blue,
      //   // splashColor: Colors.grey,
      //   // mouseCursor: MouseCursor.defer,
      //   onPressed: () {
      //     _scaffoldKey.currentState?.openDrawer();
      //   },
      //   child: Icon(Icons.person),
      // ),

      //
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     label: 'Home',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.search),
      //     label: 'Search',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.person),
      //     label: 'Profile',
      //   ),
      // ]),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        height: 70,
        elevation: 0.4,
        shape: CircularNotchedRectangle(),
        // notchMargin: 8.0,
        shadowColor: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex++;
                });
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade300,
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: Offset(-2, -2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade300,
                    spreadRadius: 0.5,
                    offset: Offset(-2, -2),
                    blurRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade300,
                    spreadRadius: 0.5,
                    offset: Offset(-2, -2),
                    blurRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade300,
                    spreadRadius: 0.5,
                    offset: Offset(-2, -2),
                    blurRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.red,
              
              content: Text("Hello! This is a SnackBar."),
              duration: Duration(seconds: 2),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        tooltip:"Tap To Add",
        splashColor: Colors.green,
        foregroundColor:Colors.black,
        shape: CircleBorder(

        ),



      ),
    );
  }
}
