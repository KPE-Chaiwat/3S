import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line(
      {Key? key,
      required this.padding_left,
      required this.padding_right,
      required this.padding_top,
      required this.padding_bottom})
      : super(key: key);
  final double padding_left;
  final double padding_right;
  final double padding_top;
  final double padding_bottom;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double customPaddingTop = _width < 380.0 ? 5 : padding_top;

    return Padding(
      padding: EdgeInsets.fromLTRB(
          padding_left, customPaddingTop, padding_right, padding_bottom),
      child: Container(
        height: 1.50,
        width: _width,
        decoration: const BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.all(
              Radius.circular(5.0) //                 <--- border radius here
              ),
        ),
      ),
    );
  }
}
