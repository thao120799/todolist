import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var jsonList;
  @override
  void initState() {
    getData();
  }

  void getData() async {
    try {
      var response = await Dio()
          .get('http://10.0.2.2:8080/api/v1/employees');
      if (response.statusCode == 200) {
        print(response.data.toString());
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GeeksForGeeks',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: jsonList == null ? 0 : jsonList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.network(
                      jsonList[index]['url'],
                      fit: BoxFit.fill,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  title: Text(jsonList[index]['name']),
                  subtitle: Text(jsonList[index]['power']),
                ));
          }),
    );
  }
}
