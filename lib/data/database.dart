import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {

  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData(){
    toDoList = [
      ["just do it", false],
      ["drink water", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }
}