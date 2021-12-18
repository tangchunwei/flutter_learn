import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PageDemo());
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Text("测试");
  }
}

class PageDemo extends StatefulWidget {
  PageDemo({Key? key}) : super(key: key);
  List<Widget> widgets = [
    const FlutterView(),
    const AndroidView(),
    const IosView()
  ];
  @override
  _PageDemoState createState() => _PageDemoState();
}

class _PageDemoState extends State<PageDemo>
    with SingleTickerProviderStateMixin {
  List tabs = ["flutter", "android", "ios"];
  late TabController _controller;
  int _index = 0;
  @override
  void initState() {
    _controller =
        TabController(initialIndex: _index, length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller = TabController(length: tabs.length, vsync: this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              if (kDebugMode) {
                print("leading");
              }
            },
          ),
          title: const Text("我是淡定"),
          centerTitle: true,
          elevation: 50,
          actions: [
            IconButton(
                onPressed: () {
                  print("actions");
                },
                icon: const Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  print("actions");
                },
                icon: const Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  print("actions");
                },
                icon: const Icon(Icons.add))
          ],
          bottom: TabBar(
            controller: _controller,
            tabs: tabs
                .map((e) => Tab(
                      text: e,
                    ))
                .toList(),
          ),
        ),
        body: TabBarView(
          children: widget.widgets,
          controller: _controller,
        ));
  }
}

class FlutterView extends StatelessWidget {
  const FlutterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Flutter"),
    );
  }
}

class AndroidView extends StatelessWidget {
  const AndroidView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Android"),
    );
  }
}

class IosView extends StatelessWidget {
  const IosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("IosView"),
    );
  }
}
