import 'package:flutter/material.dart';
import 'package:todoey/Task.dart';
import 'package:todoey/Componets/New_tasks.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Data_list.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: data.tasks[index].name,
              isCheck: data.tasks[index].checkDone,
              onChangedCallBack: (newValue) {
                  data.updateTask(data.tasks[index]);
              },
              onLongPressCallBack: (){
                data.deleteTask(data.tasks[index]);
              },
            );
          },
          itemCount: data.tasks.length,
        );
      },
    );
  }
}
