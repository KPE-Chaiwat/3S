import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Page2Body();
    return Page2Body();
  }
}

class Page2Body extends StatelessWidget {
  const Page2Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(child: Text("pag2"))),
    );
  }
}
