import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/notes_view_body_widget.dart';
import 'package:note_app/views/widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            builder: (context) => const AddNoteBottomSheet(),
          );
        },
        backgroundColor: Colors.cyanAccent,
        shape: CircleBorder(),
        child: const Icon(Icons.add,color: Colors.black,),
      ),
      body: const NotesViewBody(),
    );
  }
}

