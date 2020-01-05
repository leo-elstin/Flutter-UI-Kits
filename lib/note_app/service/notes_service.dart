import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NotesService {
  Dio _dio;
  static const _baseUrl = 'http://localhost:3000';

  static final NotesService _singleton = NotesService._internal();

  factory NotesService() {
    return _singleton;
  }

  NotesService._internal() {
    _dio = Dio();
  }

  Future<String> getNotes() async {
    Response response;
    try {
      response = await _dio.get("$_baseUrl/notes");
      debugPrint(response.statusMessage);

      return json.encode(response.data);
    } catch (e) {
      throw e;
    }
  }

  Future<String> deleteNote(String noteID) async {
    Response response;
    try {
      response = await _dio.delete("$_baseUrl/notes/$noteID");
      debugPrint(response.statusMessage);

      return json.encode(response.data);
    } catch (e) {
      throw e;
    }
  }

  Future<String> updateNote(String noteId, Map<String, dynamic> map) async {
    Response response;
    response = await _dio.put("$_baseUrl/notes/$noteId", data: map);
    debugPrint(response.statusMessage);

    return response.data.toString();
  }

  Future<String> createNote(Map<String, dynamic> map) async {
    Response response;
    response = await _dio.post(
      "$_baseUrl/notes",
      data: map,
      options: Options(
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      ),
    );
    debugPrint(response.statusMessage);

    return response.data.toString();
  }
}
