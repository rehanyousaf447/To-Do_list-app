import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Data_list.dart';

class AddTask extends StatefulWidget {

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                newTaskTitle=newValue;
              },
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                print(newTaskTitle);
               Provider.of<Data>(context,listen: false).addTask(newTaskTitle);
               Navigator.pop(context);
                },
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}
