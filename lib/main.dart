// ignore_for_file: library_private_types_in_public_api

import 'package:dashboard/note_box.dart';
import 'package:dashboard/note_card.dart';
import 'package:flutter/material.dart';

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
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.lightbulb),
              title: const Text("Notes"),
              onTap: () {
                selectIndex(0);
                Navigator.pop(context); // Close the drawer
              },
              tileColor: selectedIndex == 0 ? Colors.blue : Colors.white,
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("Reminders"),
              onTap: () {
                selectIndex(1);
                Navigator.pop(context); // Close the drawer
              },
              tileColor: selectedIndex == 1 ? Colors.blue : Colors.white,
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text("Edit Labels"),
              onTap: () {
                selectIndex(2);
                Navigator.pop(context); // Close the drawer
              },
              tileColor: selectedIndex == 2 ? Colors.blue : Colors.white,
            ),
            ListTile(
              leading: const Icon(Icons.archive),
              title: const Text("Archive"),
              onTap: () {
                selectIndex(3);
                Navigator.pop(context); // Close the drawer
              },
              tileColor: selectedIndex == 3 ? Colors.blue : Colors.white,
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text("Bin"),
              onTap: () {
                selectIndex(4);
                Navigator.pop(context); // Close the drawer
              },
              tileColor: selectedIndex == 4 ? Colors.blue : Colors.white,
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
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
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.5),
                        //     spreadRadius: 2,
                        //     blurRadius: 3,
                        //     offset: const Offset(0, 3),
                        //   ),
                        // ],
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
        ),
      ),
    );
  }
}
