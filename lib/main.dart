// import 'package:dashboard/note_box.dart';
// import 'package:dashboard/note_card.dart';
// import 'package:flutter/material.dart';
// import 'package:sidebarx/sidebarx.dart';
// // ignore: unused_import
// import 'package:dashboard/provider.dart';

// void main() {
//   runApp(MainApp());
// }

// class MainApp extends StatelessWidget {
//   final List<Map<String, String>> noteData = [
//     {
//       'noteId': '1',
//       'note': 'test note 1',
//       'trash': 'false',
//       'archive': 'false',
//       'pinned': 'false',

//     },
//     {
//       'noteId': '2',
//       'note': 'test note 2',
//       'trash': 'false',
//       'archive': 'false',
//       'pinned': 'false',
//     },
//     {
//       'noteId': '3',
//       'note': 'test note 3',
//       'trash': 'false',
//       'archive': 'false',
//       'pinned': 'false',
//     },
//     {
//       'noteId': '4',
//       'note': 'test note 4',
//       'trash': 'false',
//       'archive': 'false',
//       'pinned': 'false',
//     },
//     {
//       'noteId': '5',
//       'note': 'test note 5',
//       'trash': 'false',
//       'archive': 'false',
//       'pinned': 'false',
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
//   // ignore: library_private_types_in_public_api
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
//         leading: IconButton(
//           icon: const Icon(Icons.menu),
//           onPressed: () {
//             _controller.setExtended(!_controller.extended);
//           },
//         ),
//       ),
//       body: Row(
//         children: [
//           ExampleSidebarX(
//             controller: _controller,
//             onItemSelected: selectIndex,
//           ),
//           Expanded(
//             child: Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Column(
//                   children: [
//                     if (selectedIndex == 0)
//                       Column(
//                         children: [
//                           const NoteBox(),
//                           SizedBox(
//                             width: MediaQuery.of(context).size.width * 0.5,
//                             child: GridView.builder(
//                               padding: const EdgeInsets.all(20),
//                               gridDelegate:
//                                   const SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 4,
//                                 mainAxisSpacing: 8,
//                                 crossAxisSpacing: 8,
//                               ),
//                               shrinkWrap: true,
//                               itemCount: widget.noteData.length,
//                               itemBuilder: (context, index) {
//                                 return Container(
//                                   decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   child: NoteCard(
//                                     noteId: int.parse(widget.noteData[index]['noteId']!),
//                                     note: widget.noteData[index]['note']!,
//                                     trash: widget.noteData[index]['trash'] == 'false',
//                                     archive: widget.noteData[index]['archive'] == 'false',
//                                     pinned: widget.noteData[index]['pinned'] == 'false',
//                                     color: Colors.yellow,
//                                     labels: const [],
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     if (selectedIndex == 1 || selectedIndex == 2)
//                       Center(
//                         child: Text(
//                           selectedIndex == 1 ? 'Archive' : 'Bin',
//                           style: Theme.of(context).textTheme.headlineSmall,
//                         ),
//                       ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ExampleSidebarX extends StatelessWidget {
//   const ExampleSidebarX({
//     super.key,
//     required this.controller,
//     required this.onItemSelected,
//   });

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
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.28),
//               blurRadius: 30,
//             )
//           ],
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

// ignore: unused_import
import 'dart:convert';

import 'package:dashboard/note_box.dart';
import 'package:dashboard/note_card.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/provider.dart';
import 'package:sidebarx/sidebarx.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final Provider provider = Provider();

  MainApp({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FutureBuilder(
      future: provider.fetch(),
      builder: (context, AsyncSnapshot<List<Map<String, String>>> notesSnapshot) {
        if (notesSnapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (notesSnapshot.hasError) {
          return Text('Error: ${notesSnapshot.error}');
        } else {
          return FutureBuilder(
            future: provider.fetchArchivedNotes(),
            builder: (context, AsyncSnapshot<List<Map<String, String>>> archivedNotesSnapshot) {
              if (archivedNotesSnapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (archivedNotesSnapshot.hasError) {
                return Text('Error: ${archivedNotesSnapshot.error}');
              } else {
                return FutureBuilder(
                  future: provider.fetchTrashedNotes(),
                  builder: (context, AsyncSnapshot<List<Map<String, String>>> trashedNotesSnapshot) {
                    if (trashedNotesSnapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (trashedNotesSnapshot.hasError) {
                      return Text('Error: ${trashedNotesSnapshot.error}');
                    } else {
                      return MainScreen(
                        noteData: notesSnapshot.data!,
                        archivedNoteData: archivedNotesSnapshot.data!,
                        trashedNoteData: trashedNotesSnapshot.data!,
                      );
                    }
                  },
                );
              }
            },
          );
        }
      },
    ),
  );
}
}


class MainScreen extends StatefulWidget {
  final List<Map<String, String>> noteData;
  final List<Map<String, String>> archivedNoteData;
  final List<Map<String, String>> trashedNoteData;

  const MainScreen({
    Key? key,
    required this.noteData,
    required this.archivedNoteData,
    required this.trashedNoteData,
  }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  late final SidebarXController _controller;

  @override
  void initState() {
    _controller = SidebarXController(selectedIndex: selectedIndex, extended: true);
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
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                                    noteId: int.parse(widget.noteData[index]['noteId']!),
                                    note: widget.noteData[index]['note']!,
                                    trash: bool.parse(widget.noteData[index]['trash']!),
                                    archive: bool.parse(widget.noteData[index]['archive']!),
                                    pinned: bool.parse(widget.noteData[index]['pinned']!),
                                    color: Colors.white,
                                    labels: const [],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    if (selectedIndex == 1)
                      Column(
                        children: [
                          const NoteBox(),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: GridView.builder(
                              padding: const EdgeInsets.all(20),
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                              ),
                              shrinkWrap: true,
                              itemCount: widget.archivedNoteData.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: NoteCard(
                                    noteId: int.parse(widget.archivedNoteData[index]['noteId']!),
                                    note: widget.archivedNoteData[index]['note']!,
                                    trash: bool.parse(widget.archivedNoteData[index]['trash']!),
                                    archive: bool.parse(widget.archivedNoteData[index]['archive']!),
                                    pinned: bool.parse(widget.archivedNoteData[index]['pinned']!),
                                    color: Colors.white,
                                    labels: const [],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    if (selectedIndex == 2)
                      Column(
                        children: [
                          const NoteBox(),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: GridView.builder(
                              padding: const EdgeInsets.all(20),
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                              ),
                              shrinkWrap: true,
                              itemCount: widget.trashedNoteData.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: NoteCard(
                                    noteId: int.parse(widget.trashedNoteData[index]['noteId']!),
                                    note: widget.trashedNoteData[index]['note']!,
                                    trash: bool.parse(widget.trashedNoteData[index]['trash']!),
                                    archive: bool.parse(widget.trashedNoteData[index]['archive']!),
                                    pinned: bool.parse(widget.trashedNoteData[index]['pinned']!),
                                    color: Colors.white, // Adjust color as desired for trashed notes
                                    labels: const [],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
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
