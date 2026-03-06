import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/helper/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  addNote(NoteModel note) {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNotesSuccess());
      notesBox.add(note);
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
