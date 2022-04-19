import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/task.model.dart';   //material.dart



class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title:Text('APP AKU'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(tasklist.length, (index) => TaskContainer(task: tasklist[index])
        )

        // [
        //   CustomText(text: 'Task1'),
        //   CustomText(text : 'Task2'),
        //   CustomText(text : 'Task3'),
        //
        // ],

      ),
    );
  }
}

class TaskContainer extends StatelessWidget {
  // final String text;
  final Task task;

  TaskContainer({required this.task});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade100,
          border: Border.all(color: Colors.grey.shade50) ,
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.title,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold) ,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              task.description,
              style: TextStyle(fontSize: 20) ,
            ),
          ],
        ),
      ),
    );
  }
}


