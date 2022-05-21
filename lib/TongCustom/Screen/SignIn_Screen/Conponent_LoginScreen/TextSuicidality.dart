import 'package:flutter/material.dart';

class Suicidality extends StatelessWidget {
  const Suicidality({Key? key, required this.title, required this.maxwidth})
      : super(key: key);
  final String title;
  final double maxwidth;

  @override
  Widget build(BuildContext context) {
    TextStyle styleText = const TextStyle(
        fontSize: 35, color: Color.fromARGB(255, 185, 128, 194));
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
