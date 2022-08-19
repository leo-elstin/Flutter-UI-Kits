// To parse this JSON data, do
//
//     final notesDto = notesDtoFromJson(jsonString);

import 'dart:convert';

List<NotesDto> notesDtoFromJson(String str) =>
    List<NotesDto>.from(json.decode(str).map((x) => NotesDto.fromJson(x)));

String notesDtoToJson(List<NotesDto> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NotesDto {
  String id;
  String title;
  String content;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  NotesDto({
    this.id,
    this.title,
    this.content,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory NotesDto.fromJson(Map<String, dynamic> json) => NotesDto(
        id: json["_id"] == null ? null : json["_id"],
        title: json["title"] == null ? null : json["title"],
        content: json["content"] == null ? null : json["content"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"] == null ? null : json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "title": title == null ? null : title,
        "content": content == null ? null : content,
        "createdAt": createdAt == null ? null : createdAt.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt.toIso8601String(),
        "__v": v == null ? null : v,
      };
}
