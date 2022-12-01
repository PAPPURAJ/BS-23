
import 'package:flutter/material.dart';
import 'package:learning/args/page3_args.dart';

class Page3 extends StatefulWidget {
  page3Args args;
  static const  routeName="page3";
   Page3({Key? key,required this.args}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 3 ${widget.args.name}")),
    );
  }
}
