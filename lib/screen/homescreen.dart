import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';   //material.dart



class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title:Text('APP AKU'),
      ),
      body:ListView(
        children: List.generate(tasklist.length, (index) => CustomText(text: tasklist[index]))
        //
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

class CustomText extends StatelessWidget {
  final String text;

  CustomText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.red,
      child: Text(
        text,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}


List<String> tasklist = [
'task 1','Task 2','task 3'
];