import 'package:TodoX/app/data/models/note.dart';
import '../../providers/note/provider.dart';

class NoteRepository {
  NoteProvider noteProvider;
  NoteRepository({required this.noteProvider});

  List<Note> readNotes() => noteProvider.readNotes();
  void writeNotes(List<Note> notes) => noteProvider.writeNotes(notes);
}
