import 'package:flutter/material.dart';
import 'package:tpk_login_v2/TongCustom/ConStant/constant.dart';

import '../../../widget/appbar/NongTongCustomAppbar/NongtongCustomAppbbar.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _bgColor1 = Logindata_constant.bgColor;
    double _width = MediaQuery.of(context).size.width;
    double _height = 60.0;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: _bgColor1,
            height: 30,
          ),
          App_Bar_NongtongCustom(),
          Container(
            color: _bgColor1,
            height: _height,
            //width: _width,
            child: Container(
              // margin: const EdgeInsets.symmetric(horizontal: 0.0),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              height: _height,
              width: _width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: const Text("dat"),
            ),
          )
        ],
      ),
    );
  }
}
