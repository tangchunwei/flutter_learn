import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        onPressed: () {},
        child: const Text('正常按钮'),
      ),
      OutlinedButton(onPressed: () {}, child: const Text("有边框按钮")),
      TextButton(onPressed: () {}, child: const Text("无边框按钮"))
    ]);
  }
}
