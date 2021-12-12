import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ClickDemo extends StatelessWidget {
  const ClickDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (kDebugMode) {
          print("tag");
        }
      },
      onDoubleTap: () {
        if (kDebugMode) {
          print("double tag");
        }
      },
      child: const Text("Click Demo"),
    );
  }
}
