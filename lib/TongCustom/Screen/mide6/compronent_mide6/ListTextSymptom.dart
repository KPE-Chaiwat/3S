import 'package:flutter/material.dart';

class ListSymptom extends StatelessWidget {
  const ListSymptom({Key? key, required this.symptomText}) : super(key: key);
  final List<String> symptomText;

  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle = const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.2200000009366443,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (var item in symptomText)
          (Text(
            item,
            style: _textStyle,
          ))
      ],
    );
  }
}
