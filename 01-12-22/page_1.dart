
import 'package:flutter/material.dart';
import 'package:learning/args/page3_args.dart';
import 'package:learning/page_3.dart';

class Page1 extends StatefulWidget {
  static String routeName="page1";
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 1")),
      body:  Center(child: ElevatedButton(
        child: Text("Goto Page 3"),
        onPressed: (){
          Navigator.of(context).pushNamed(Page3.routeName,arguments: page3Args(name: "Manik",roll: "1234",dept: "CSE"));
        },
      )),
    );
  }
}
