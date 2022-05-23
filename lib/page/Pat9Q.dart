import 'package:flutter/material.dart';

class Pat9Q extends StatelessWidget {
  const Pat9Q({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizedBox spaceHeight(height) => SizedBox(
          height: height,
        );

    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        // boxShadow: [
        // BoxShadow(
        //   color: Colors.black26,
        //   blurRadius: 5,
        //   offset: Offset(0, -3), // Shadow position
        // ),
//],
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            children: [BackButton(), Text("data")],
          ),
        ),
      ),
    );
  }

  Widget BackButton() => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/icon-action-day-back@3x.png",
                  height: 12, width: 12))
        ],
      );
}
