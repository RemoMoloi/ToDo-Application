import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
List toDoList = [];

  // reference 
  final _myBox = Hive.box("mybox");

  // runs this method if the app is opened for the first time ever
  void createInitialData(){
    toDoList = [
      ["Make Tutorila", false],
      ["Do Exercise", false]
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}