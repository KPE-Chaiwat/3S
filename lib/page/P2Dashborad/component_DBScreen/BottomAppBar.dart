import 'package:flutter/material.dart';

class BottomAppBar_NongTongCS extends StatefulWidget {
  const BottomAppBar_NongTongCS({Key? key}) : super(key: key);

  @override
  State<BottomAppBar_NongTongCS> createState() =>
      _BottomAppBar_NongTongCSState();
}

class _BottomAppBar_NongTongCSState extends State<BottomAppBar_NongTongCS> {
  @override
  Widget build(BuildContext context) {
    const int _height_IphoneSE = 670;
    final double _query_height = MediaQuery.of(context).size.height;
    double _height =
        _query_height < _height_IphoneSE ? 50.0 : 72.0; //custom heightbox
    TextStyle style = const TextStyle(
      color: Colors.white,
      fontSize: 11,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.2200000009366445,
    );
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: _height, //72.0, <------
          decoration: const BoxDecoration(
            // color: Colors.red,
            color: Color(0xff230938),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          ),
        ),
        Positioned(
          left: 50.0,
          top: -30.0,
          child: InkWell(
            onTap: () {
              print("pp");
            },
            child: Container(
              width: 30, //80.0,
              height: 60, // 80.0,
              decoration: const BoxDecoration(
                //color: Colors.yellow,
                image: DecorationImage(
                  image: AssetImage("assets/icons/group-4@3x.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 40.0,
          top: 30.0,
          child: Text(
            "ผู้ป่วยใหม่",
            style: style,
          ),
        ),
        Positioned(
          right: 50.0,
          top: -30.0,
          child: InkWell(
            onTap: () {
              print("pp");
            },
            child: Container(
              width: 30, //80.0,
              height: 60, // 80.0,
              decoration: const BoxDecoration(
                // color: Colors.yellow,
                image: DecorationImage(
                  image: AssetImage("assets/icons/group-5@3x.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 40.0,
          top: 30.0,
          child: Text(
            "ผู้ป่วยเดิม",
            style: style,
          ),
        )
      ],
    );
  }
}
