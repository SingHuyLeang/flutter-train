class ToDoModel {
  String title, content;

  ToDoModel(this.title, this.content);

  Map<String, dynamic> toJson() => {
        "title": title,
        "content": content,
      };

  factory ToDoModel.fromJson(Map<String, dynamic> json) => ToDoModel(
        json["title"].toString(),
        json["content"].toString(),
      );
}
