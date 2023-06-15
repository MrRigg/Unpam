import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homepages(),
    );
  }
}

class homepages extends StatefulWidget {
  const homepages({super.key});

  @override
  State<homepages> createState() => _homepagesState();
}

class _homepagesState extends State<homepages> {
  List dataList = [];
  Future<void> fetchData() async {
    var url = Uri.parse('https://api.npoint.io/99c279bb173a6e28359c/data');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      dataList = jsonDecode(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rio Iglesias 201011400423 MP-11'),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 4, 4, 4),
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.brown[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Text(dataList[index]["nomor"]),
                          Text('. '),
                          Text(dataList[index]["nama"]),
                        ],
                      ),
                    )
                  ],
                ),
                Text("Artinya : ${(dataList[index]["arti"])}"),
                SizedBox(
                  height: 20,
                )
              ]);
        },
      ),
    );
  }
}
