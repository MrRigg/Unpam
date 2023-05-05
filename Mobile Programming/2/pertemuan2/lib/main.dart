import "package:flutter/material.dart";

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "201011400423 - 123456789",
      home: MyHomePages(),
    );
  }
}

class MyHomePages extends StatefulWidget {
  @override
  State<MyHomePages> createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text("dada"),
    );
  }
}
