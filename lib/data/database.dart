import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  final String dbKey = "TODOLIST";
  final _mybox = Hive.box('myBox');

  void createInitialData() {
    toDoList = [
      ["Welcome to the todo app!", false],
      ["You can add", false],
    ];
  }

  void loadData() {
    toDoList = _mybox.get(dbKey);
  }

  void updateDataBase() {
    _mybox.put(dbKey, toDoList);
  }
}
