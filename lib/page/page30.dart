import 'package:flutter/material.dart';

class Page30 extends StatelessWidget {
  const Page30({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page30Body();
  }
}

class Page30Body extends StatelessWidget {
  const Page30Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(child: Text("pag30"))),
    );
  }
}
