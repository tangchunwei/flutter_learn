import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("我是淡定"), centerTitle: true, elevation: 100.0),
      body: const ListviewDemo(),
    );
  }
}

class ListviewDemo extends StatefulWidget {
  const ListviewDemo({Key? key}) : super(key: key);

  @override
  _ListviewDemoState createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListviewDemo> {
  List<int> list = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 300; i++) {
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: ListView(
      children: list.map((e) => Text(e.toString())).toList(),
    ));
  }
}
