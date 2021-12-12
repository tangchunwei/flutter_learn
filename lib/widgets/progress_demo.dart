import 'package:flutter/material.dart';

class ProgressDemo extends StatelessWidget {
  const ProgressDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: const [
          LinearProgressIndicator(
              value: 0.5, valueColor: AlwaysStoppedAnimation(Colors.green)),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: CircularProgressIndicator(
              value: 0.69,
              valueColor: AlwaysStoppedAnimation(Colors.red),
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
