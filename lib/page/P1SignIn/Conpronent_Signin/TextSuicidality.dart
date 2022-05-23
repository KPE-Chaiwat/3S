import 'package:flutter/material.dart';

class Suicidality extends StatelessWidget {
  const Suicidality({Key? key, required this.title, required this.maxwidth})
      : super(key: key);
  final String title;
  final double maxwidth;

  @override
  Widget build(BuildContext context) {
    TextStyle styleText =
        const TextStyle(fontSize: 36, color: Color(0xff9076a5));
    return ConstrainedBox(
      //color: Colors.blueGrey,
      constraints: BoxConstraints(maxHeight: 150, maxWidth: maxwidth),
      child: Text(
        title,
        style: styleText,
        textAlign: TextAlign.left,
      ),
    );
  }
}
