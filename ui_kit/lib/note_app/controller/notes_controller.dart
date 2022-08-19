import 'package:flutter/material.dart';
import 'package:flutter_widgets/note_app/dto/notes_dto.dart';
import 'package:flutter_widgets/note_app/service/notes_service.dart';

class NotesController {
  NotesService _notesService;

  static final NotesController _singleton = NotesController._internal();

  factory NotesController() {
    return _singleton;
  }

  NotesController._internal() {
    _notesService = NotesService();
  }

  Future<List<NotesDto>> getNotes() async {
    try {
      String response = await _notesService.getNotes();
      debugPrint(response);
      return notesDtoFromJson(response);
    } catch (e) {
      throw e;
    }
  }

  Future<String> deleteNote(String noteID) async {
    try {
      String response = await _notesService.deleteNote(noteID);
      debugPrint(response);
      return '';
    } catch (e) {
      throw e;
    }
  }

  Future<String> createNotes(String title, String content) async {
    try {
      Map<String, dynamic> map = {
        'title': title,
        'content': content,
      };
      String response = await _notesService.createNote(map);
      debugPrint(response);
      return '';
    } catch (e) {
      throw e;
    }
  }

  Future<String> updateNote(String id, String title, String content) async {
    try {
      Map<String, dynamic> map = {
        'title': title,
        'content': content,
      };
      String response = await _notesService.updateNote(id, map);
      debugPrint(response);
      return '';
    } catch (e) {
      throw e;
    }
  }
}
