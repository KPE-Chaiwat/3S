import 'package:flutter/material.dart';

class Page10 extends StatelessWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page10Body();
    //return Dashborad();
  }
}

class Page10Body extends StatelessWidget {
  const Page10Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(child: Text("pag10"))),
    );
  }
}
