import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    const double _padding = 42.0;
    return Container(
      height: 1.50,
      width: _width,
      decoration: const BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.all(
            Radius.circular(5.0) //                 <--- border radius here
            ),
      ),
    );
  }
}
