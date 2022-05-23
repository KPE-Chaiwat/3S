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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          // height: 52.5,
          // width: 82.5,
          child: const Text("sra.",
              style: TextStyle(
                //fontFamily: 'Rubik',
                // color: color-puple,
                fontSize: 92,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                letterSpacing: -1.840000007833754,
              )),
        ),
        // Image.asset(
        //   "assets/icons/sra@3x.png",
        //   color: Colors.black,
        //   height: 54.5,
        //   width: 82.5,
        // )
      ],
    );
  }
}
