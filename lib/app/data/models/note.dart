import 'package:equatable/equatable.dart';

class Note extends Equatable{
  String? id;
  String? userId;
  String? title;
  String? content;
  DateTime? dateAdded;

  Note({this.id, this.userId, this.title, this.content, this.dateAdded});

  Note copyWith({
    String? id,
    String? userId,
    String? title,
    String? content,
    DateTime? dateAdded,
  }) {
    return Note(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      content: content ?? this.content,
      dateAdded: dateAdded ?? this.dateAdded,

    );
  }

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json["id"],
      userId: json["userId"],
      title: json["title"],
      content: json["content"],
      dateAdded: DateTime.tryParse(json["dateAdded"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "userId": userId,
      "title": title,
      "content": content,
      "dateAdded": dateAdded!.toIso8601String(),
    };
  }
  
  @override
  List<Object?> get props => [id, userId, title];
}
