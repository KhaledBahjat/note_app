import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/notes_view_body_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.cyanAccent,
        shape: CircleBorder(),
        child: const Icon(Icons.add,color: Colors.black,),
      ),
      body: const NotesViewBody(),
    );
  }
}

