import 'package:flutter/material.dart';

import '../TongCustom/Screen/mide6/mide6.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Mide6();
  }
}

class Page3Body extends StatelessWidget {
  const Page3Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
        child: const Text("PAGE 3"),
      ),
    );
  }
}
