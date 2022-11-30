import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   Size? screen;
   bool circularRunning=false;



  @override
  Widget build(BuildContext context) {
    screen==MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(id: 123,))).then((value)  {
                print(circularRunning);

                setState(() {
                  circularRunning=value;
                });
                Future.delayed(const Duration(seconds: 5), () {
                  setState(() {
                    circularRunning=false;
                  });
                });



                });
              },
              child: Container(
                height: 120,
                width: 120,
                child: Card(
                  child: Center(child: Text("abc")),
                  color: Colors.cyan,
                ),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              child: Card(
                child: Center(child: Text("abc")),
                color: Colors.cyan,
              ),
            ),
            Container(
              height: 120,
              width: 120,
              child: Card(
                child: Center(child: circularRunning?CircularProgressIndicator():Text("abc")),
                color: Colors.cyan,
              ),
            )
          ],
        ),
      )
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
