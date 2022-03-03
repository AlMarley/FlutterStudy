// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newpageflutter/src/controllers/home_comtroller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  _success() {
    return ListView.builder(
      itemCount: controller.todos.length,
      itemBuilder: (context, index) {
        var todo = controller.todos[index];
        return ListTile(
          leading: Checkbox(
            value: todo.completed,
            onChanged: (bool? value) {},
          ),
          title: Text(todo.title!),
        );
      },
    );
  }

  _loading() {
    return Center(child: CircularProgressIndicator());
  }

  _error() {
    return Center(
      child: RaisedButton(
          onPressed: () {
            controller.start();
          },
          child: Text("Tebtar novamente")),
    );
  }

  _start() {
    return Container();
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.start:
        return _start();
      case HomeState.loading:
        return _loading();
      case HomeState.error:
        return _error();
      case HomeState.success:
        return _success();

      default:
        return _start();
    }
  }

  @override
  void initState() {
    super.initState();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Studying Flutter")),
        actions: [
          IconButton(
              onPressed: () {
                controller.start();
              },
              icon: Icon(Icons.refresh_outlined))
        ],
      ),
      body: AnimatedBuilder(
          animation: controller.state,
          builder: (context, child) {
            return stateManagement(controller.state.value);
          }),
    );
  }
}
