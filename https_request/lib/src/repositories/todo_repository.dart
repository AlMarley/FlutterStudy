import 'dart:html';

import 'package:dio/dio.dart';
import 'package:newpageflutter/src/models/todo_model.dart';

class TodoRepository {
  final dio = Dio();
  final url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<TodoModel>> FetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;

    List<TodoModel> todos = [];
    for (var json in list) {
      final todo = TodoModel.fromJson(json);
      todos.add(todo);
    }

    return todos;
  }
}
