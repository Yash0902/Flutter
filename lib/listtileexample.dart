// import 'package:flutter/material.dart';
// class Listtileexample extends StatefulWidget {
//   const Listtileexample({super.key});
//
//   @override
//   State<Listtileexample> createState() => _ListtileexampleState();
// }
//
// class _ListtileexampleState extends State<Listtileexample> {
//
//   List<Map<String,dynamic>> _items = [
//     {
//       "id": 1,
//       "icon": "https://img.icons8.com/color/48/000000/home.png",
//       "title": "Home",
//       "subtitle": "Go to home screen",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 2,
//       "icon": "https://img.icons8.com/color/48/000000/user.png",
//       "title": "Profile",
//       "subtitle": "View your profile",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 3,
//       "icon": "https://img.icons8.com/color/48/000000/settings.png",
//       "title": "Settings",
//       "subtitle": "Change app settings",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 4,
//       "icon": "https://img.icons8.com/color/48/000000/notification.png",
//       "title": "Notifications",
//       "subtitle": "View recent notifications",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": true,
//       "selected": false
//     },
//     {
//       "id": 5,
//       "icon": "https://img.icons8.com/color/48/000000/folder.png",
//       "title": "Files",
//       "subtitle": "Your documents and files",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 6,
//       "icon": "https://img.icons8.com/color/48/000000/calendar.png",
//       "title": "Calendar",
//       "subtitle": "Check your events",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 7,
//       "icon": "https://img.icons8.com/color/48/000000/chat.png",
//       "title": "Messages",
//       "subtitle": "Chat with friends",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 8,
//       "icon": "https://img.icons8.com/color/48/000000/shopping-cart.png",
//       "title": "Cart",
//       "subtitle": "View items in cart",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 9,
//       "icon": "https://img.icons8.com/color/48/000000/like.png",
//       "title": "Favorites",
//       "subtitle": "Your favorite items",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 10,
//       "icon": "https://img.icons8.com/color/48/000000/map.png",
//       "title": "Map",
//       "subtitle": "Locate places nearby",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 11,
//       "icon": "https://img.icons8.com/color/48/000000/music.png",
//       "title": "Music",
//       "subtitle": "Listen to music",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 12,
//       "icon": "https://img.icons8.com/color/48/000000/video.png",
//       "title": "Videos",
//       "subtitle": "Watch videos",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 13,
//       "icon": "https://img.icons8.com/color/48/000000/help.png",
//       "title": "Help",
//       "subtitle": "Get support",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 14,
//       "icon": "https://img.icons8.com/color/48/000000/info.png",
//       "title": "About",
//       "subtitle": "About the app",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": true,
//       "selected": false
//     },
//     {
//       "id": 15,
//       "icon": "https://img.icons8.com/color/48/000000/lock.png",
//       "title": "Privacy",
//       "subtitle": "Privacy settings",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 16,
//       "icon": "https://img.icons8.com/color/48/000000/cloud.png",
//       "title": "Cloud",
//       "subtitle": "Cloud storage",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 17,
//       "icon": "https://img.icons8.com/color/48/000000/earth.png",
//       "title": "Explore",
//       "subtitle": "Discover new content",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 18,
//       "icon": "https://img.icons8.com/color/48/000000/wallet.png",
//       "title": "Wallet",
//       "subtitle": "Manage your funds",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 19,
//       "icon": "https://img.icons8.com/color/48/000000/star.png",
//       "title": "Achievements",
//       "subtitle": "Your rewards and badges",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     },
//     {
//       "id": 20,
//       "icon": "https://img.icons8.com/color/48/000000/logout-rounded.png",
//       "title": "Logout",
//       "subtitle": "Sign out of account",
//       "trailing": "https://img.icons8.com/color/48/000000/arrow.png",
//       "isThreeLine": false,
//       "selected": false
//     }
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: AppBar(
//           title:Text("ListtileExample"),
//        ),
//        body:Container(
//
//           child:ListView.builder(
//
//               itemCount:_items.length,
//               itemBuilder:(BuildContext Context , int index){
//                 var item = _items[index];
//                 return ListTile(
//                   minVerticalPadding: 20,
//                   selectedTileColor: Colors.blue.shade100,
//                   tileColor: Colors.grey,
//                   leading:Image.network(
//                       width: 20,
//                       height: 20,
//                       item['icon']!),
//                   title: Text(item["title"]!),
//                   subtitle:Text(item["subtitle"]!),
//                   trailing: Image.network(
//                       width:20,
//                       height:20,
//                       item['trailing']),
//                 );
//               },
//           ),
//        )
//     );
//   }
// }
import 'package:flutter/material.dart';

class Listtileexample extends StatefulWidget {
  const Listtileexample({super.key});

  @override
  State<Listtileexample> createState() => _ListtileexampleState();
}

class _ListtileexampleState extends State<Listtileexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Tile Example")),
      body: ListView.builder(
        padding: EdgeInsets.all(10),

        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(2),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              horizontalTitleGap: 16,
              titleAlignment: ListTileTitleAlignment.titleHeight,
              selectedColor: Colors.white,
              style: ListTileStyle.list,
              iconColor: Colors.white,
              titleTextStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              splashColor: Colors.purple.withOpacity(0.2),
              textColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 3,
              ),
              enabled: true,

              tileColor: Colors.grey,
              isThreeLine: true,
              leading: Icon(Icons.person),
              title: Text("Home"),
              subtitle: Text("Go to home screen"),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
