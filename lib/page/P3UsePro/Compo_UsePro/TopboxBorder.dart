import 'package:flutter/material.dart';

class TopboxBorder extends StatelessWidget {
  const TopboxBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: _width,
          height: 52,
          // alignment: Alignment.center,

          color: Color(0xffFFE9F1),
        ),
        Positioned(
          bottom: -0.5,
          child: Container(
            alignment: Alignment.bottomCenter,
            width: _width,
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
          ),
        )
      ],
    );
  }
}
