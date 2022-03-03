import 'package:flutter/cupertino.dart';
import 'package:newpageflutter/src/models/todo_model.dart';
import 'package:newpageflutter/src/repositories/todo_repository.dart';

class HomeController {
  List<TodoModel> todos = [];
  final repository = TodoRepository();
  final state = ValueNotifier<HomeState>(HomeState.start);

  Future start() async {
    state.value = HomeState.loading;
    try {
      state.value = HomeState.success;
      todos = await repository.FetchTodos();
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, success, error }
