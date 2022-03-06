import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import '../TypeAdapter/user.dart';

class HomePage extends StatelessWidget {

  Box box;

  HomePage(this.box, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    User user = box.get('user');

    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello, Hive!'),
        ),
        body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(user.name),
                Text(user.age.toString()),
              ],
            )
        )
    );
  }
}
