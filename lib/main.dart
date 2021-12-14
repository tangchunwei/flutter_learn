import 'package:flutter/material.dart';
import 'package:flutter_learn/widgets/navigator.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const LoginPage(),
      },
      onGenerateRoute: (RouteSettings s) {
        print(s.name);
        switch (s.name) {
          case "menu":
            return MaterialPageRoute(
                builder: (context) {
                  return const MenuPage();
                },
                settings: s);
            break;

          default:
        }
      },
    );
  }
}
