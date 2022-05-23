import 'package:flutter/material.dart';

class Page23 extends StatelessWidget {
  const Page23({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page23Body();
  }
}

class Page23Body extends StatelessWidget {
  const Page23Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(child: Text("pag23"))),
    );
  }
}
