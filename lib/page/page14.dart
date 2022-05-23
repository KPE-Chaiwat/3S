import 'package:flutter/material.dart';

import 'P14PatMind6/ScreenPatMind.dart';

class Page14 extends StatelessWidget {
  const Page14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PatMind6();
  }
}

class Page14Body extends StatelessWidget {
  const Page14Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(child: Text("pag13"))),
    );
  }
}
