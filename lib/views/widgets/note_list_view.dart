import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });
  final colors =const [
    Color(0xfffecd7e),
    Color(0xfff9c1c1),
    Color(0xffb5eaea),
    Color(0xfff6eac2),
    Color(0xffd4a5a5),
    Color(0xffc1fba4),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>  NoteItem(color: colors[index % colors.length],),
      itemCount: 10,
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
    );
  }
}
