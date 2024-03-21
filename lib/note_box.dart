// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';

// class NoteBox extends StatefulWidget {
//   const NoteBox({super.key});

//   @override
//   State<NoteBox> createState() => _NoteBoxState();
// }

// class _NoteBoxState extends State<NoteBox> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 700,
//       decoration: BoxDecoration(
//         border: Border.all(
//           width: 1,
//           color: Colors.black,
//         ),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 hintText: "enter your note here",
//               ),
//               maxLines: 2,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(icon: Icon(Icons.push_pin), onPressed: null),
//                 IconButton(icon: Icon(Icons.add_alert), onPressed: null),
//                 IconButton(icon: Icon(Icons.archive), onPressed: null),
//                 IconButton(icon: Icon(Icons.more_vert), onPressed: null),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class NoteBox extends StatefulWidget {
  const NoteBox({super.key});

  @override
  State<NoteBox> createState() => _NoteBoxState();
}

class _NoteBoxState extends State<NoteBox> {
  // ignore: prefer_final_fields
  TextEditingController _controller = TextEditingController();
  double _minHeight = 60.0; // Initial height
  double _maxHeight = 200.0; // Max height for the text field

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              constraints: BoxConstraints(minHeight: _minHeight, maxHeight: _maxHeight),
              child: TextField(
                controller: _controller,
                onChanged: (value) {
                  final textLength = _controller.text.split('\n').length;
                  setState(() {
                    // Adjust height based on the number of lines
                    _minHeight = 60.0 + (textLength - 1) * 20.0;
                    // Limit the max height
                    _maxHeight = 200.0;
                  });
                },
                maxLines: null, // Unlimited lines
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "enter your note here",
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(icon: Icon(Icons.push_pin), onPressed: null),
                IconButton(icon: Icon(Icons.add_alert), onPressed: null),
                IconButton(icon: Icon(Icons.archive), onPressed: null),
                IconButton(icon: Icon(Icons.more_vert), onPressed: null),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
