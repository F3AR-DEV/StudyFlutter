class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, required this.isDone});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Desayunar', isDone: true),
      ToDo(id: '02', todoText: 'Lavarse los dientes', isDone: true),
      ToDo(id: '03', todoText: 'Bañarse', isDone: false),
      ToDo(id: '04', todoText: 'Vestirse', isDone: false),
      ToDo(id: '05', todoText: 'Salir', isDone: false),
    ];
  }
}
