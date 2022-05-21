import 'dart:io';

import 'package:flutter/material.dart';

class PictureProfile extends StatelessWidget {
  const PictureProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const CircleAvatar(
    //     backgroundColor: Colors.black87, child: Text('P'), radius: 60.0);
    return Container(
      width: 130,
      height: 145,
      child: Stack(
        children: [
          const CircleAvatar(
              backgroundColor: Colors.black87, child: Text('P'), radius: 60.0),
          Positioned(
            right: 1,
            bottom: 0.2,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
          )
        ],
      ),
    );
  }
}
