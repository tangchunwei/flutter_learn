import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  const WrapDemo({Key? key}) : super(key: key);

  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 20; i++) {
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: [
        Container(
          color: Colors.red,
          height: 100,
          width: 100,
          child: Text("测我是"),
        ),
        Container(
          color: Colors.green,
          height: 100,
          width: 100,
          child: Text("测我是"),
        ),
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          child: Text("测我是"),
        ),
        Container(
          color: Colors.amberAccent,
          height: 100,
          width: 100,
          child: Text("测我是"),
        ),
        Container(
          color: Colors.amber,
          height: 100,
          width: 100,
          child: Text("测我是"),
        ),
        Container(
          color: Colors.lightGreenAccent,
          height: 100,
          width: 100,
          child: Text("测我是"),
        ),
        Container(
          color: Colors.red,
          height: 100,
          width: 100,
          child: Text("测我是"),
        ),
        Container(
          color: Colors.red,
          height: 100,
          width: 100,
          child: Text("测我是"),
        ),
      ],
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("布局练习"),
      ),
      body: const WrapDemo(),
      // body: Flex(
      //   direction: Axis.vertical,
      //   children: [
      //     Expanded(
      //         child: Container(color: Colors.yellow, width: 100, height: 100),
      //         flex: 1),
      //     Expanded(
      //         child: Container(color: Colors.red, width: 100, height: 100),
      //         flex: 2),
      //     Expanded(
      //         child: Container(color: Colors.green, width: 100, height: 100),
      //         flex: 1)
      //   ],
      // ),
      // body: Column(
      //   textDirection: TextDirection.ltr,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Container(
      //       color: Colors.red,
      //       width: 150,
      //       height: 100,
      //     ),
      //     Container(
      //       color: Colors.yellow,
      //       width: 150,
      //       height: 100,
      //     ),
      //     Container(
      //       color: Colors.green,
      //       width: 150,
      //       height: 100,
      //     )
      //   ],
      // ),
      // body: Row(
      //   children: [
      //     Container(
      //       color: Colors.red,
      //       width: 100,
      //       height: 100,
      //     ),
      //     Container(
      //       color: Colors.yellow,
      //       width: 100,
      //       height: 100,
      //     ),
      //     Container(
      //       color: Colors.green,
      //       width: 100,
      //       height: 100,
      //     )
      //   ],
      // ),
    );
  }
}

class SlackDemo extends StatelessWidget {
  const SlackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("布局练习"),
      ),
      // body: Stack(
      //   // fit: StackFit.expand,
      //   alignment: AlignmentDirectional.center,
      //   children: [
      //     Container(
      //       color: Colors.green,
      //       width: 100,
      //       height: 100,
      //     ),
      //     // Container(
      //     //   color: Colors.red,
      //     //   width: 50,
      //     //   height: 20,
      //     // ),
      //     Positioned(
      //         width: 100, height: 200, child: Container(color: Colors.red))
      //   ],
      // ),
      body: const DecorateDemo(),
    );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
      child: const Align(
        alignment: Alignment.centerLeft,
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}

class EdgeDemo extends StatelessWidget {
  const EdgeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      padding: const EdgeInsets.all(50),
      color: Colors.red,
      child:
          Text("dakjfladsjflkasmvckxmvlkasdjflkdsjfhsadlkjflkdsahglkasdjglk"),
    );
  }
}

class BoxDemo extends StatelessWidget {
  const BoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ConstrainedBox(
    //   constraints: const BoxConstraints(
    //       minHeight: 50, minWidth: 50, maxHeight: 100, maxWidth: 100),
    //   child: Container(
    //     width: 300,
    //     height: 300,
    //     color: Colors.red,
    //   ),
    // );
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.green,
      ),
    );
  }
}

class DecorateDemo extends StatelessWidget {
  const DecorateDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: DecoratedBox(
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [Colors.red, Colors.green]),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 2),
            ]),
        child: const Padding(
          padding: EdgeInsets.only(left: 100, right: 100, top: 20, bottom: 20),
          child: Text(
            "注册",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
