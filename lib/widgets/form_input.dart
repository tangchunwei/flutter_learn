import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FormInputDemo extends StatefulWidget {
  const FormInputDemo({Key? key}) : super(key: key);
  @override
  _FormInputDemoState createState() => _FormInputDemoState();
}

class _FormInputDemoState extends State<FormInputDemo> {
  final GlobalKey _key = GlobalKey<FormState>();
  final TextEditingController _user = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final FocusNode _u = FocusNode();
  final FocusNode _p = FocusNode();
  late FocusScopeNode? _focusScopeNode;

  @override
  void dispose() {
    super.dispose();
    _user.dispose();
    _pass.dispose();
    _u.dispose();
    _p.dispose();
    _focusScopeNode?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              focusNode: _u,
              controller: _user,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.add),
                  labelText: "账号",
                  hintText: "请输入账号"),
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return "账号必须输入";
                }
              },
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 16),
            TextFormField(
              focusNode: _p,
              controller: _pass,
              obscureText: true,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.add),
                  labelText: "密码",
                  hintText: "请输入密码"),
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (v) {
                if (kDebugMode) {
                  print(v);
                }
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                _focusScopeNode?.unfocus();
                if (kDebugMode) {
                  print("111");
                }
              },
              child: const Text("提交"),
            )
          ],
        ));
  }
}
