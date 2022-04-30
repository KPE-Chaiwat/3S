import 'package:flutter/material.dart';

class LineContainer extends StatelessWidget {
  const LineContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    const double _padding = 42.0;
    return Container(
      height: 5.0,
      width: _width,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
            Radius.circular(5.0) //                 <--- border radius here
            ),
      ),
    );
  }
}
