import 'package:flutter/material.dart';

class LogoSar extends StatelessWidget {
  const LogoSar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Image.asset(
    //   "assets/icons/sra@3x.png",
    //   color: Colors.black,
    //   height: 54.5,
    //   width: 82.5,
    // );
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text("sra.",
          style: TextStyle(
            //fontFamily: 'Rubik',
            color: Colors.black,
            fontSize: 92,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            letterSpacing: -1.840000007833754,
          )),
    );
  }
}
