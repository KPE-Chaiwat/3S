import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
        height: 1.0,
        width: _width,
        decoration: const BoxDecoration(
          color: Colors.black54,
        ));
  }
}
