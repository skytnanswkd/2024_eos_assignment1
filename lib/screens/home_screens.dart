import 'package:eos_todolist/widgets/add_button.dart';
import 'package:eos_todolist/widgets/todo_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  List toDoLists = [];

  @override
  void initState() {
    super.initState();
    toDoLists.add("111111111");
    toDoLists.add("222222222");
    toDoLists.add("333333333");
  }

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
                  child: Column(
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
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 300,
                  decoration: BoxDecoration(
                      color: Color(0xFFA4C639).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Positioned(
                top: 20,
                left: MediaQuery.of(context).size.width /2 - 75,
                child: Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xFFA4C639).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "To do list",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80, left: 40, right: 25),
                child: Container(
                  height: MediaQuery.of(context).size.height - 400,
                  child: ListView.builder(
                      itemCount: toDoLists.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ToDoItem(
                            title: toDoLists[index],
                            onDelete:() {
                              setState(() {
                                toDoLists.removeAt(index);
                              });
                            },);
                      }),
                ),
              ),
              Positioned(
                  bottom: 30,
                  right: 30,
                  child: AddButton(onPressed: () {
                    setState(() {
                      toDoLists.add('+++++++');
                    });
                  }))
            ],
          )
        ],
      ),
    );
  }
}
