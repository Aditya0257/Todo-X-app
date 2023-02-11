import 'dart:convert';
import 'package:TodoX/app/core/utils/keys.dart';
import 'package:TodoX/app/data/services/storage/note_services.dart';
import 'package:get/get.dart';

import '../../models/note.dart';

class NoteProvider {
  final _storage = Get.find<NoteStorageService>();

  // {
  //       "_id": "63d4ecb67f63d5f9cf5de8fd",
  //       "id": "0001",
  //       "userId": "aditya27@gmail.com",
  //       "title": "My First Note",
  //       "content": "This is the content",
  //       "dateAdded": "2023-01-28T09:36:54.297Z",
  //       "__v": 0
  //   },

  List<Note> readNotes() {
    var notes = <Note>[];
    jsonDecode(_storage.read(noteKey).toString())
        .forEach((e) => notes.add(Note.fromJson(e)));
    return notes;
  }

  void writeNotes(List<Note> notes) {
    _storage.write(noteKey, jsonEncode(notes));
  }
}
