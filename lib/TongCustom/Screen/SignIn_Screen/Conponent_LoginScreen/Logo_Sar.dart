import 'package:flutter/material.dart';

class LogoSar extends StatelessWidget {
  const LogoSar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _fontSize = 70.0;
    return Container(
      alignment: Alignment.centerLeft,
      height: 120.0,
      //  color: Colors.pink,
      child: const Text("sra.",
          style: TextStyle(fontSize: _fontSize, fontWeight: FontWeight.bold)),
    );
  }
}
