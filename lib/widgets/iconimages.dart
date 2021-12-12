import 'package:flutter/material.dart';

class IconImagesDemo extends StatelessWidget {
  const IconImagesDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.add),
        IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
        // SizedBox(
        //   width: double.infinity,
        //   child: Image.network(
        //       "https://i1.kknews.cc/SIG=22qq45e/50np00048010op788292.jpg"),
        // ),
        Image.asset("images/1430112700-4140199527.jpg")
      ],
    );
  }
}
