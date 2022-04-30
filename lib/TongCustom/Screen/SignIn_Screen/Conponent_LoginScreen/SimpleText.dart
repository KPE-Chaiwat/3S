import 'package:flutter/material.dart';

class SimpleText extends StatelessWidget {
  const SimpleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle = const TextStyle(
      fontFamily: 'Mitr',
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
      letterSpacing: 0,
    );
    return SizedBox(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "นโยบายข้อมูลส่วนตัว",
          style: _textStyle,
        ),
        Text("เงือนไขตามการใช้งาน", style: _textStyle)
      ],
    ));
  }
}
