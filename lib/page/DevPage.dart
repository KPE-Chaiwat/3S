import 'package:flutter/material.dart';
import 'package:tpk_login_v2/page/page14.dart';

//---------------------------------------------------------

class DevPage extends StatelessWidget {
  const DevPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Pat9Q();
    return PageDevBody();
  }
}

class PageDevBody extends StatelessWidget {
  const PageDevBody({Key? key}) : super(key: key);

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
