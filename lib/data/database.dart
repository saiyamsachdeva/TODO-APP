import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //refrence the box

  final _mybox = Hive.box('mybox');
  //run this method if this is the first time ever opening the app
  void createInitialData(){
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }


  //load the data from the database
  void loadData(){
    toDoList = _mybox.get("TODOLIST");
  }

  //update the database
  void updateDatabase(){
    _mybox.put("TODOLIST", toDoList);
  }
}