import 'package:flutter/material.dart';
import './widgets/content.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Rio Iglesias"),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            CardContent(subTitle: "One"),
            CardContent(subTitle: "Two"),
            CardContent(subTitle: "Three"),
            CardContent(subTitle: "Four"),
            CardContent(subTitle: "Five"),
            CardContent(subTitle: "Six"),
            CardContent(subTitle: "Seven"),
            CardContent(subTitle: "Eight"),
            CardContent(subTitle: "Nine"),
            CardContent(subTitle: "Ten"),
            CardContent(subTitle: "Eleven"),
            CardContent(subTitle: "Twelve"),
          ],
        ));
  }
}
