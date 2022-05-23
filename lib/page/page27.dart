import 'package:flutter/material.dart';

class Page27 extends StatelessWidget {
  const Page27({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page27Body();
  }
}

class Page27Body extends StatelessWidget {
  const Page27Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(child: Text("pag27"))),
    );
  }
}
