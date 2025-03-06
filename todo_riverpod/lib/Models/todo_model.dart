class Todo {
  final String id;
  final String title;
  final bool isCompleted;

  Todo({required this.id, required this.title, this.isCompleted = false});

  Todo copyWith({String? id, String? title, bool? isCompleted}) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  static List<Todo> todoList() {
    return [
      Todo(id: '01', title: 'Desayunar', isCompleted: true),
      Todo(id: '02', title: 'Almorzar', isCompleted: false),
      Todo(id: '03', title: 'Cenar', isCompleted: false),
    ];
  }
}
