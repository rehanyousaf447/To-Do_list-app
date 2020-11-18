import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  final bool isCheck;
  final String taskTitle;
  final Function onChangedCallBack;
  final Function onLongPressCallBack;


  TaskTile({this.isCheck, this.taskTitle, this.onChangedCallBack,this.onLongPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isCheck ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing:Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isCheck,
        onChanged: onChangedCallBack,
      ),
    );
  }
}

