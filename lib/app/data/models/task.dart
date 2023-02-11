import 'package:equatable/equatable.dart';

class Task extends Equatable{
  String? id;
  String? userId;
  String title;
  int icon;
  String color;
  List? todos;

  Task({ this.id,  this.userId, required this.title, required this.icon, required this.color, this.todos});

  Task copyWith({
    String? id,
    String? userId,
    String? title,
    int? icon,
    String? color,
    List? todos,
  }) {
    return Task(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      todos: todos ?? this.todos,

    );
  }

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json["id"],
      userId: json["userId"],
      title: json["title"],
      icon: json["icon"],
      color: json["color"],
      todos: json["todos"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "userId": userId,
      "title": title,
      "icon": icon,
      "color": color,
      "todos": todos,
    };
  }
  
  @override
  List<Object?> get props => [id, userId, title, icon, color];
}
