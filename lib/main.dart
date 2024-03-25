// // ignore_for_file: library_private_types_in_public_api

// import 'package:dashboard/note_box.dart';
// import 'package:dashboard/note_card.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MainApp());
// }

// class MainApp extends StatelessWidget {
//   final List<Map<String, String>> noteData = [
//     {
//       'title': 'Note 1',
//       'body': 'test note 1',
//     },
//     {
//       'title': 'Note 2',
//       'body': 'test note 2',
//     },
//     {
//       'title': 'Note 3',
//       'body': 'test note 3',
//     },
//     {
//       'title': 'Note 4',
//       'body': 'test note 4',
//     },
//     {
//       'title': 'Note 5',
//       'body': 'test note 5',
//     },
//   ];

//   MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MainScreen(noteData: noteData),
//     );
//   }
// }

// class MainScreen extends StatefulWidget {
//   final List<Map<String, String>> noteData;

//   const MainScreen({super.key, required this.noteData});

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int selectedIndex = 0;

//   void selectIndex(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 5,
//         title: const Row(
//           children: [
//             Image(
//               image: NetworkImage(
//                   "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Google_Keep_icon_%282020%29.svg/1489px-Google_Keep_icon_%282020%29.svg.png"),
//               fit: BoxFit.cover,
//               height: 40,
//               width: 30,
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Text('Keep'),
//           ],
//         ),
//         actions: const [
//           IconButton(
//             icon: Icon(Icons.refresh),
//             onPressed: null,
//           ),
//           IconButton(
//             icon: Icon(Icons.line_weight_sharp),
//             onPressed: null,
//           ),
//           IconButton(
//             icon: Icon(Icons.settings),
//             onPressed: null,
//           ),
//           IconButton(
//             icon: Icon(Icons.grid_on_rounded),
//             onPressed: null,
//           ),
//           IconButton(
//             icon: Icon(Icons.person_2_rounded),
//             onPressed: null,
//           ),
//         ],
//         shape: const Border(
//           bottom: BorderSide(
//             color: Colors.grey,
//             width: 1.0,
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             ListTile(
//               leading: const Icon(Icons.lightbulb),
//               title: const Text("Notes"),
//               onTap: () {
//                 selectIndex(0);
//                 Navigator.pop(context); // Close the drawer
//               },
//               tileColor: selectedIndex == 0 ? Colors.blue : Colors.white,
//             ),
//             ListTile(
//               leading: const Icon(Icons.notifications),
//               title: const Text("Reminders"),
//               onTap: () {
//                 selectIndex(1);
//                 Navigator.pop(context); // Close the drawer
//               },
//               tileColor: selectedIndex == 1 ? Colors.blue : Colors.white,
//             ),
//             ListTile(
//               leading: const Icon(Icons.edit),
//               title: const Text("Edit Labels"),
//               onTap: () {
//                 selectIndex(2);
//                 Navigator.pop(context); // Close the drawer
//               },
//               tileColor: selectedIndex == 2 ? Colors.blue : Colors.white,
//             ),
//             ListTile(
//               leading: const Icon(Icons.archive),
//               title: const Text("Archive"),
//               onTap: () {
//                 selectIndex(3);
//                 Navigator.pop(context); // Close the drawer
//               },
//               tileColor: selectedIndex == 3 ? Colors.blue : Colors.white,
//             ),
//             ListTile(
//               leading: const Icon(Icons.delete),
//               title: const Text("Bin"),
//               onTap: () {
//                 selectIndex(4);
//                 Navigator.pop(context); // Close the drawer
//               },
//               tileColor: selectedIndex == 4 ? Colors.blue : Colors.white,
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Column(
//             children: [
//               const NoteBox(),
//               SizedBox(
//                 width: MediaQuery.of(context).size.width * 0.5,
//                 child: GridView.builder(
//                   padding: const EdgeInsets.all(20),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4,
//                     mainAxisSpacing: 8,
//                     crossAxisSpacing: 8,
//                   ),
//                   shrinkWrap: true,
//                   itemCount: widget.noteData.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8),
//                         // boxShadow: [
//                         //   BoxShadow(
//                         //     color: Colors.grey.withOpacity(0.5),
//                         //     spreadRadius: 2,
//                         //     blurRadius: 3,
//                         //     offset: const Offset(0, 3),
//                         //   ),
//                         // ],
//                       ),
//                       child: NoteCard(
//                         title: widget.noteData[index]['title']!,
//                         body: widget.noteData[index]['body']!,
//                         color: Colors.yellow,
//                         labels: const ['Label 1', 'Label 2'],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: library_private_types_in_public_api, unused_element

// import 'package:dashboard/note_box.dart';
// import 'package:dashboard/note_card.dart';
// import 'package:flutter/material.dart';
// import 'package:sidebarx/sidebarx.dart';

// void main() {
//   runApp(MainApp());
// }

// class MainApp extends StatelessWidget {
//   final List<Map<String, String>> noteData = [
//     {
//       'title': 'Note 1',
//       'body': 'test note 1',
//     },
//     {
//       'title': 'Note 2',
//       'body': 'test note 2',
//     },
//     {
//       'title': 'Note 3',
//       'body': 'test note 3',
//     },
//     {
//       'title': 'Note 4',
//       'body': 'test note 4',
//     },
//     {
//       'title': 'Note 5',
//       'body': 'test note 5',
//     },
//   ];

//   MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MainScreen(noteData: noteData),
//     );
//   }
// }

// class MainScreen extends StatefulWidget {
//   final List<Map<String, String>> noteData;

//   const MainScreen({super.key, required this.noteData});

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }


// class _MainScreenState extends State<MainScreen> {
//   int selectedIndex = 0;
//   late final SidebarXController _controller;

//   @override
//   void initState() {
//     _controller =
//         SidebarXController(selectedIndex: selectedIndex, extended: true);
//     super.initState();
//   }

//   void selectIndex(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // AppBar code remains unchanged
//       ),
//       drawer: ExampleSidebarX(
//         controller: _controller,
//         onItemSelected: selectIndex, // Pass the callback function
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Column(
//             children: [
//               if (selectedIndex == 0)
//                 Column(
//                   children: [
//                     const NoteBox(),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width * 0.5,
//                       child: GridView.builder(
//                         padding: const EdgeInsets.all(20),
//                         gridDelegate:
//                             const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 4,
//                           mainAxisSpacing: 8,
//                           crossAxisSpacing: 8,
//                         ),
//                         shrinkWrap: true,
//                         itemCount: widget.noteData.length,
//                         itemBuilder: (context, index) {
//                           return Container(
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: NoteCard(
//                               title: widget.noteData[index]['title']!,
//                               body: widget.noteData[index]['body']!,
//                               color: Colors.yellow,
//                               labels: const ['Label 1', 'Label 2'],
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               if (selectedIndex == 1 || selectedIndex == 2)
//                 Center(
//                   child: Text(
//                     selectedIndex == 1 ? 'Archive' : 'Bin',
//                     style: Theme.of(context).textTheme.headlineSmall,
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// class ExampleSidebarX extends StatelessWidget {
//   const ExampleSidebarX({
//     Key? key,
//     required this.controller,
//     required this.onItemSelected,
//   }) : super(key: key);

//   final SidebarXController controller;
//   final Function(int) onItemSelected;

//   @override
//   Widget build(BuildContext context) {
//     return SidebarX(
//       controller: controller,
//       theme: SidebarXTheme(
//         margin: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: canvasColor,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         hoverColor: scaffoldBackgroundColor,
//         textStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
//         selectedTextStyle: const TextStyle(color: Colors.black),
//         itemTextPadding: const EdgeInsets.only(left: 30),
//         selectedItemTextPadding: const EdgeInsets.only(left: 30),
//         itemDecoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: canvasColor),
//         ),
//         selectedItemDecoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//             color: actionColor.withOpacity(0.37),
//           ),
//           gradient: const LinearGradient(
//             colors: [accentCanvasColor, canvasColor],
//           ),
//         ),
//         iconTheme: IconThemeData(
//           color: Colors.black.withOpacity(0.7),
//           size: 20,
//         ),
//         selectedIconTheme: const IconThemeData(
//           color: Colors.black,
//           size: 20,
//         ),
//       ),
//       extendedTheme: const SidebarXTheme(
//         width: 200,
//         decoration: BoxDecoration(
//           color: canvasColor,
//         ),
//       ),
//       footerDivider: divider,
//       items: [
//         SidebarXItem(
//           icon: Icons.lightbulb,
//           label: 'Note',
//           onTap: () {
//             onItemSelected(0); // Set index for "Note" tile
//           },
//         ),
//         SidebarXItem(
//           icon: Icons.archive,
//           label: 'Archive',
//           onTap: () {
//             onItemSelected(1); // Set index for "Archive" tile
//           },
//         ),
//         SidebarXItem(
//           icon: Icons.delete,
//           label: 'Bin',
//           onTap: () {
//             onItemSelected(2); // Set index for "Bin" tile
//           },
//         ),
//       ],
//     );
//   }
// }

// const primaryColor = Color(0xFF685BFF);
// const canvasColor = Colors.white;
// const scaffoldBackgroundColor = Color.fromARGB(255, 76, 76, 201);
// const accentCanvasColor = Color.fromARGB(255, 76, 76, 201);
// const white = Colors.white;
// final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
// final divider = Divider(color: white.withOpacity(0.3), height: 1);

import 'package:dashboard/note_box.dart';
import 'package:dashboard/note_card.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final List<Map<String, String>> noteData = [
    {
      'title': 'Note 1',
      'body': 'test note 1',
    },
    {
      'title': 'Note 2',
      'body': 'test note 2',
    },
    {
      'title': 'Note 3',
      'body': 'test note 3',
    },
    {
      'title': 'Note 4',
      'body': 'test note 4',
    },
    {
      'title': 'Note 5',
      'body': 'test note 5',
    },
  ];

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(noteData: noteData),
    );
  }
}

class MainScreen extends StatefulWidget {
  final List<Map<String, String>> noteData;

  const MainScreen({super.key, required this.noteData});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  late final SidebarXController _controller;

  @override
  void initState() {
    _controller =
        SidebarXController(selectedIndex: selectedIndex, extended: true);
    super.initState();
  }

  void selectIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: const Row(
          children: [
            Image(
              image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Google_Keep_icon_%282020%29.svg/1489px-Google_Keep_icon_%282020%29.svg.png"),
              fit: BoxFit.cover,
              height: 40,
              width: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text('Keep'),
          ],
        ),
        actions: const [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.line_weight_sharp),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.grid_on_rounded),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.person_2_rounded),
            onPressed: null,
          ),
        ],
        shape: const Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _controller.setExtended(!_controller.extended);
          },
        ),
      ),
      body: Row(
        children: [
          ExampleSidebarX(
            controller: _controller,
            onItemSelected: selectIndex,
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    if (selectedIndex == 0)
                      Column(
                        children: [
                          const NoteBox(),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: GridView.builder(
                              padding: const EdgeInsets.all(20),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                              ),
                              shrinkWrap: true,
                              itemCount: widget.noteData.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: NoteCard(
                                    title: widget.noteData[index]['title']!,
                                    body: widget.noteData[index]['body']!,
                                    color: Colors.yellow,
                                    labels: const ['Label 1', 'Label 2'],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    if (selectedIndex == 1 || selectedIndex == 2)
                      Center(
                        child: Text(
                          selectedIndex == 1 ? 'Archive' : 'Bin',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
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

class ExampleSidebarX extends StatelessWidget {
  const ExampleSidebarX({
    super.key,
    required this.controller,
    required this.onItemSelected,
  });

  final SidebarXController controller;
  final Function(int) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: scaffoldBackgroundColor,
        textStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.black),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.black,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: canvasColor,
        ),
      ),
      footerDivider: divider,
      items: [
        SidebarXItem(
          icon: Icons.lightbulb,
          label: 'Note',
          onTap: () {
            onItemSelected(0); // Set index for "Note" tile
          },
        ),
        SidebarXItem(
          icon: Icons.archive,
          label: 'Archive',
          onTap: () {
            onItemSelected(1); // Set index for "Archive" tile
          },
        ),
        SidebarXItem(
          icon: Icons.delete,
          label: 'Bin',
          onTap: () {
            onItemSelected(2); // Set index for "Bin" tile
          },
        ),
      ],
    );
  }
}

const primaryColor = Color(0xFF685BFF);
const canvasColor = Colors.white;
const scaffoldBackgroundColor = Color.fromARGB(255, 76, 76, 201);
const accentCanvasColor = Color.fromARGB(255, 76, 76, 201);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);