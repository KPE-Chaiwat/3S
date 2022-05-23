import 'package:flutter/material.dart';
import 'package:tpk_login_v2/page/Pat9Q.dart';

import 'P14PatMind6/Mind6.dart';

//---------------------------------------------------------

class DevPage extends StatelessWidget {
  const DevPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Pat9Q();
    return Mind6();
  }
}

class Page1Body extends StatelessWidget {
  const Page1Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.blue,
        child: const Text("PAGE 1"),
      ),
    );
  }
}
