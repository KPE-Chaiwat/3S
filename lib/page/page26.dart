import 'package:flutter/material.dart';

class Page26 extends StatelessWidget {
  const Page26({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page26Body();
  }
}

class Page26Body extends StatelessWidget {
  const Page26Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(child: Text("pag26"))),
    );
  }
}
