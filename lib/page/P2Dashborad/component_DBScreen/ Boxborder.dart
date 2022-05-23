import 'package:flutter/material.dart';

class TopBoxBorder extends StatelessWidget {
  const TopBoxBorder(
      {Key? key, required this.width, required this.color, required this.title})
      : super(key: key);
  final double width;
  final Color color;
  final title;
  @override
  Widget build(BuildContext context) {
    TextStyle styleText =
        const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    return Stack(
      children: [
        Container(
          width: width,
          height: 53,
          // alignment: Alignment.center,
          color: Color(0xffFFE9F1),
        ),
        Positioned(
          bottom: -0.5,
          child: Container(
            alignment: Alignment.bottomCenter,
            width: width,
            height: 50,
            // alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, -3), // Shadow position
                ),
              ],
            ),
            child: Text(
              title,
              style: styleText,
            ),
          ),
        )
      ],
    );
  }
}
