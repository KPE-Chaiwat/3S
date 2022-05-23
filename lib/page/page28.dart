import 'package:flutter/material.dart';

class Page28 extends StatelessWidget {
  const Page28({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page28Body();
  }
}

class Page28Body extends StatelessWidget {
  const Page28Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(child: Text("pag28"))),
    );
  }
}
