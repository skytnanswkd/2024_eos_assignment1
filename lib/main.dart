import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EOS ToDoList',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Eos_ToDolist"),
        leading: Icon(Icons.check_box_outlined),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(

          color: Colors.orange,
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(width: 5),
            color: Colors.blue,

          ),
        ),
        Container(
          color: Colors.orange,
          width: 153,
          height: 150,
        ),
        Container(
          color: Colors.orange,
          width: 150,
          height: 150,
        )
      ]),
      bottomNavigationBar: BottomAppBar(child: Text('hello eos')),
    );
  }
}
