import 'package:flutter/material.dart';

class NoteCard extends StatefulWidget {
  const NoteCard(
      {super.key,
      required this.title,
      required this.body,
      required this.color,
      required this.labels});

  final String title;
  final String body;
  final Color color;
  final List<String> labels;

  @override
  State<NoteCard> createState() => _NoteCardState();
}

class _NoteCardState extends State<NoteCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.body,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: widget.labels
                  .map((label) => Chip(label: Text(label)))
                  .toList(),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.push_pin),
                  onPressed: null,
                ),
                IconButton(onPressed: null, icon: Icon(Icons.add_alert)),
                IconButton(onPressed: null, icon: Icon(Icons.archive)),
                IconButton(onPressed: null, icon: Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
