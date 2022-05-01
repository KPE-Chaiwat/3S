import 'package:flutter/material.dart';

class BottomAppBar_NongTongCS extends StatelessWidget {
  const BottomAppBar_NongTongCS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 25,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
            ),
            Container(
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.yellow,
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
            child: new Container(
              width: 100.0,
              height: 80.0,
              decoration: new BoxDecoration(color: Colors.red),
              child: new Text('hello'),
            )),
        Positioned(
            right: 50.0,
            top: -20.0,
            child: new Container(
              width: 100.0,
              height: 80.0,
              decoration: new BoxDecoration(color: Colors.red),
              child: new Text('hello'),
            )),
      ],
    );
  }
}
