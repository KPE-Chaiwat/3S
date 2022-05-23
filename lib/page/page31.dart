import 'package:flutter/material.dart';

class Page31 extends StatelessWidget {
  const Page31({Key? key}) : super(key: key);

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
          child: const Center(child: Text("pag31"))),
    );
  }
}
