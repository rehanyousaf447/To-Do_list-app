import 'package:flutter/material.dart';
import 'package:todoey/Screens/Screen_task.dart';
import 'Task.dart';
import 'package:provider/provider.dart';
import 'Data_list.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

 Data data;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context)=>Data(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenTask(),
      ),
    );
  }
}

