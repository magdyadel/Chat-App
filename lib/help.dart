//
//
// main() {
//   runApp(MaterialApp(
//     theme: ThemeData(
//       primarySwatch: Colors.lightGreen,
//       fontFamily: "font1",
//     ),
//     debugShowCheckedModeBanner: false,
//     home: MyFirstApp(),
//   ));
// }


// import 'menu.dart';
// import 'package:flutter/material.dart';
//
// class Calls extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length:3,
//       child: Scaffold(
//         drawer: Menu(),
//         appBar: AppBar(
//           title: Text("Calls"),
//           bottom: TabBar(
//             tabs: [
//               Tab(text:"Phone"),
//               Tab(text:"Contacts"),
//               Tab(text:"Messages"),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             ListView(),
//             ListView(),
//             ListView(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ShopApp extends StatelessWidget {
//   List lang = [
//   ];
//
//   //List s=lang.keys.toList();
//   List lang1 = [
//
//   ];
//
//   List img = [
//     CircleAvatar(
//       child: Image.network("https://img.etimg.com/thumb/msid-71477539,width-650,imgsize-622277,,resizemode-4,quality-100/music_thinkstockphotos.jpg"),
//     ),
//     CircleAvatar(
//       child: Image.network("https://static-cdn.jtvnw.net/ttv-boxart/Music.jpg"),
//     ),
//     CircleAvatar(
//       child: Image.network("https://9b16f79ca967fd0708d1-2713572fef44aa49ec323e813b06d2d9.ssl.cf2.rackcdn.com/1140x_a10-7_cTC/NS-WKMAG0730-1595944356.jpg"),
//     ),
//     CircleAvatar(
//       child: Image.network("https://businesstech.co.za/news/wp-content/uploads/2012/12/iTunes-SA-BT.jpg"),
//     ),
//     CircleAvatar(
//       child: Image.network("https://image.freepik.com/free-vector/circle-made-music-instruments_23-2147509304.jpg?2"),
//     ),
//     CircleAvatar(
//       child: Image.network("https://image.freepik.com/free-vector/music-festival-background_23-2147507460.jpg?3"),
//     ),
//     CircleAvatar(
//       child: Image.network("https://play-lh.googleusercontent.com/c0uMGe9aLRQxGtAXB_9xnKnG83VOGRD7NtglvnzPj9SYS3_ZYA_EYhtP86nePn0vjI0"),
//     ),
//     CircleAvatar(
//       child: Image.network("https://wallpaperaccess.com/full/1162775.jpg"),
//     ),
//     CircleAvatar(
//       child: Image.network("https://wallpaperaccess.com/full/1891198.jpg"),
//     ),
//     CircleAvatar(
//       child: Image.network("https://wallpaperaccess.com/full/2792313.jpg"),
//     ),
//     CircleAvatar(
//       child: Image.network("https://i.pinimg.com/originals/2a/57/e2/2a57e2929b4a57a9ab69c36dad95a8fc.jpg"),
//     ),
//     CircleAvatar(
//       child: Image.network("https://4.imimg.com/data4/DO/JC/MY-1978309/music-wallpaper-500x500.jpg"),
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Menu(),
//       backgroundColor: Colors.cyanAccent,
//       body: ListView(
//         children: [
//           for (int i = 0; i < lang.length; i++) //for (var k in lang.keys)//
//             ListTile(
//               trailing: Icon(
//                 Icons.play_arrow,
//                 color: Colors.black,
//               ),
//               leading: img[i],
//               title: Text(lang[i]),
//               subtitle: Text(lang1[i]),
//               onTap: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (BuildContext context) => HomePage(),
//                   ),
//                 );
//               },
//             ),
//         ],
//       ),
//       appBar: AppBar(
//         title: Text("MUSIC PLAYER"),
//         backgroundColor: Colors.lightGreen,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.library_music),
//             onPressed: () {
//               print("one");
//               print("two");
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Second extends StatelessWidget {
//   String s;
//   Second(String message) {
//     s = message;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Menu(),
//       appBar: AppBar(
//         title: Text("Music Player"),
//         backgroundColor: Colors.lightGreen,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.library_music),
//             onPressed: () {
//               print("one");
//               print("two");
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         color: Colors.cyanAccent,
//         child: ListView(
//           children: [
//             ListTile(
//               title: Text("Play $s"),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Settings extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Menu(),
//       body: Container(
//         color: Colors.cyanAccent,
//         child: ListView(
//           children: [
//             ListTile(
//               title: Text("Settings"),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//       appBar: AppBar(
//         title: Text("Settings"),
//         backgroundColor: Colors.lightGreen,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.library_music),
//             onPressed: () {
//               print("one");
//               print("two");
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Search extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Menu(),
//       body: Container(
//         color: Colors.cyanAccent,
//         child: ListView(
//           children: [
//             ListTile(
//               title: Text("Search"),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//       appBar: AppBar(
//         title: Text("Search"),
//         backgroundColor: Colors.lightGreen,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.library_music),
//             onPressed: () {
//               print("one");
//               print("two");
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class LogOut extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Menu(),
//       appBar: AppBar(
//         title: Text("Log Out"),
//         backgroundColor: Colors.lightGreen,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.library_music),
//             onPressed: () {
//               print("one");
//               print("two");
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         color: Colors.cyanAccent,
//         child: ListView(
//           children: [
//             ListTile(
//               title: Text("Log Out"),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
// import 'package:flutter/material.dart';
// import 'main.dart';
//
// class Menu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Container(
//         color: Colors.lightGreen,
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Text("Magdy Adel"),
//               accountEmail: Text("magdy@gmail.com"),
//               currentAccountPicture: Image.asset("assets/images/m.jpeg"),
//             ),
//             Divider(
//               color: Colors.black,
//               height: 20,
//               thickness: 10,
//             ),
//             Card(
//               color: Colors.deepOrange,
//               child: ListTile(
//                 title: Text("Home"),
//                 trailing: Icon(
//                   Icons.home,
//                   color: Colors.black,
//                 ),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => MyFirstApp(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Card(
//               color: Colors.deepOrange,
//               child: ListTile(
//                 title: Text("settings"),
//                 trailing: Icon(
//                   Icons.settings,
//                   color: Colors.black,
//                 ),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => Settings(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Card(
//               color: Colors.deepPurple,
//               child: ListTile(
//                 title: Text("Search"),
//                 trailing: Icon(
//                   Icons.search,
//                   color: Colors.black,
//                 ),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => Search(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Card(
//               color: Colors.amber,
//               child: ListTile(
//                 title: Text("log out"),
//                 trailing: Icon(
//                   Icons.logout,
//                   color: Colors.black,
//                 ),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => LogOut(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

/*

import 'package:flutter/material.dart';
import 'package:whatsapp/models/ConversationModel.dart';

class ChatScreen extends StatefulWidget {
  final ConversationModel conversation;

  const ChatScreen({Key key, this.conversation}) : super(key: key);
  @override
  _ChatScreenState createState() => _ChatScreenState(conversation);
}

class _ChatScreenState extends State<ChatScreen> {
  final ConversationModel conversation;

  _ChatScreenState(this.conversation);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe8dfd8),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(63.0),
        child: AppBar(
          backgroundColor: Color(0xFF128C7E),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).maybePop(),
          ),
          titleSpacing: 0,
          title: ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(conversation.image),
            ),
            title: Text(
              conversation.fullName,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Text(
              conversation.date,
              style: TextStyle(color: Colors.white.withOpacity(.7)),
            ),
          ),
          actions: <Widget>[
            Icon(Icons.videocam),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.call),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                      margin: EdgeInsets.symmetric(horizontal: 21,vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(conversation.message,style: TextStyle(fontSize: 17,)),
                          SizedBox(width: 5,),
                          Padding(
                            padding: const EdgeInsets.only(top: 21),
                            child: Text(conversation.date,style: TextStyle(fontSize: 12,color: Colors.grey),),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left:7,
                      top: 12,
                      child: ClipPath(
                        clipper: TriangleClipper(),
                        child: Container(
                          height: 20,
                          width: 30,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 211,
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Type a message',
                                contentPadding: EdgeInsets.only(left: 5),
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 18)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -3,
                    top: 12,
                    child: ClipPath(
                      clipper: TriangleClipper(),
                      child: Container(
                        height: 20,
                        width: 30,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFF128C7E), shape: BoxShape.circle),
                child: Icon(
                  Icons.keyboard_voice,
                  color: Colors.white,
                  size: 32,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
*/
