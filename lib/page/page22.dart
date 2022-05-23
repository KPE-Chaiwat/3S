import 'package:flutter/material.dart';

class Page22 extends StatelessWidget {
  const Page22({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page22Body();
  }
}

class Page22Body extends StatelessWidget {
  const Page22Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(child: Text("pag22"))),
    );
  }
}
