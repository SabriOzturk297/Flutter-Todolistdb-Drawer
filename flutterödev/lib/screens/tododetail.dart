import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petgoapp/models/todo.dart';

class TodoDetail extends StatefulWidget {
  const TodoDetail({super.key});
  @override
  State<TodoDetail> createState() => _TodoDetailState();
}

Todo todo = Get.arguments;

class _TodoDetailState extends State<TodoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${todo.title} detay"),
        actions: const [],
      ),
      body: const Center(
        child: Text("Başlık"),
      ),
    );
  }
}
