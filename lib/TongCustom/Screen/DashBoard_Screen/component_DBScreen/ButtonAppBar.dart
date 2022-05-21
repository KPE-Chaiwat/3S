import 'package:flutter/material.dart';

class BottomAppBar_NongTongCS extends StatelessWidget {
  const BottomAppBar_NongTongCS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int _height_IphoneSE = 670;
    final double _query_height = MediaQuery.of(context).size.height;
    double _height =
        _query_height < _height_IphoneSE ? 30.0 : 60.0; //custom heightbox

    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              height: _height, // 60,
              decoration: const BoxDecoration(
                // color: Colors.red,
                color: Color(0xff230938),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
            ),
          ],
        ),
        Positioned(
          left: 50.0,
          top: -20.0,
          child: InkWell(
            onTap: () {},
            child: Container(
//margin: EdgeInsets.all(2),
              width: 60, //80.0,
              height: 60, // 80.0,
              decoration: const BoxDecoration(
                  // color: Colors.yellow,
                  image: DecorationImage(
                image: AssetImage("assets/images/icon1.png"),
                fit: BoxFit.fill,
              )),
            ),
          ),
        ),
        Positioned(
          right: 50.0,
          top: -20.0,
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 60, //80.0,
              height: 60, // 80.0,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage("assets/images/icon2.png"),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
