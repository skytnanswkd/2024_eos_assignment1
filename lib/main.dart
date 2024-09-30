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
          backgroundColor: Color(0xFFA4C639).withOpacity(0.1),
          title: Text("EOS ToDoList"),
          leading: Image.asset('assets/images/eos_logo.jpeg')),
      body: Column(
        children: [
          Container(
            height: 200,
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.white,
                      border: Border.all(width: 10, color: Colors.grey)),
                  child:
                      Center(child: Image.asset('assets/images/eos_logo.jpeg')),
                ),
                SizedBox(
                  width: 35,
                ),
                Expanded(
                child :Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '장동호',
                      style: TextStyle(fontSize: 20, fontFamily: 'Pretenard'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('한양대 소프트웨어학부 24학번 학생')
                  ],
                ),),
              ],
            ),
          ),
        Container(
          height: 500,
          color: Color(0xFFA4C639).withOpacity(0.1) ,
        )
        ],

      ),
    );
  }
}
