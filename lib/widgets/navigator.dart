import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登录"),
      ),
      body: ElevatedButton(
        onPressed: () async {
          Navigator.of(context)
              .pushNamed("menu", arguments: "菜单")
              .then((value) => {print(value)});
          // var res = await Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) {
          //       return const MenuPage(
          //         title: '登录界面',
          //       );
          //     },
          //     settings: const RouteSettings(
          //         name: 'menu', arguments: {"name": "dancing111"}),
          //     maintainState: true,
          //     fullscreenDialog: true));
          // if (kDebugMode) {
          //   print(res);
          // }
        },
        child: const Text("登录"),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  // final String title;
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic arguments = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.toString()),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop("淡定电子科技");
        },
        child: const Text("返回"),
      ),
    );
  }
}
