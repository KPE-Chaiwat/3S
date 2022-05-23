import 'package:flutter/material.dart';

class TextStr9Q extends StatelessWidget {
  const TextStr9Q(
      {Key? key,
      required this.msg,
      required this.sizeMsg,
      this.fontWeight = false})
      : super(key: key);
  final String msg;
  final double sizeMsg;
  final bool fontWeight;

  @override
  Widget build(BuildContext context) {
    SizedBox spaceHeight(height) => SizedBox(
          height: height,
        );
    return SizedBox(
      child: Text(msg,
          style: TextStyle(
              fontSize: sizeMsg,
              color: Color(0xff230a38),
              fontWeight: fontWeight ? FontWeight.w400 : FontWeight.normal)),
    );
  }
}
