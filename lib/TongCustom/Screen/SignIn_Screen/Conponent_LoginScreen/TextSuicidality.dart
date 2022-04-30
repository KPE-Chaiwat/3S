import 'package:flutter/material.dart';

class Suicidality extends StatelessWidget {
  const Suicidality({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    TextStyle styleText = const TextStyle(
        fontSize: 35, color: Color.fromARGB(255, 185, 128, 194));
    return SizedBox(
      //color: Colors.blueGrey,
      child: Text(
        title,
        style: styleText,
      ),
    );
  }
}
