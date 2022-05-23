import 'package:flutter/material.dart';

class Page29 extends StatelessWidget {
  const Page29({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page29Body();
  }
}

class Page29Body extends StatelessWidget {
  const Page29Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(child: Text("pag29"))),
    );
  }
}
