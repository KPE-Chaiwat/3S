import 'package:flutter/material.dart';

class Page24 extends StatelessWidget {
  const Page24({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page24Body();
  }
}

class Page24Body extends StatelessWidget {
  const Page24Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(child: Text("pag24"))),
    );
  }
}
