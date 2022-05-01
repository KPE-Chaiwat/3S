import 'package:flutter/material.dart';
import 'package:tpk_login_v2/TongCustom/ConStant/constant.dart';
import 'package:tpk_login_v2/widget/appbar/AppBar.dart';

import '../../../widget/appbar/NongTongCustomAppbar/NongtongCustomAppbbar.dart';

import '../../../widget/common/Advancedropdown.dart';
import '../../Component_All/NongTong_Dropdown.dart';
import '../SignIn_Screen/Conponent_LoginScreen/lineCustom.dart';
import 'component_DBScreen/BoxShowData.dart';
import 'component_DBScreen/ButtonAppBar.dart';
import 'component_DBScreen/line.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _bgColor1 = Color(0xffFFE9F1);
    double _width = MediaQuery.of(context).size.width;
    double _height = 844; //MediaQuery.of(context).size.width; //800;

    const List<MapEntry<String, String>> _itemDropdown = [
      MapEntry("1", "kku1"),
      MapEntry("2", "kku2"),
      MapEntry("3", "kku3"),
      MapEntry("4", "kku4"),
    ];
    String _value = "kku1";

    return SingleChildScrollView(
      child: Container(
        color: _bgColor1,
        child: Column(
          children: [
            Container(
              color: _bgColor1,
              height: 20,
            ),
            Container(
              width: _width,
              height: _height,
              // alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, -3), // Shadow position
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "สถิติการฆ่าตัวตายในพื้นที่",
                    style: Logindata_constant.textStyle_title(18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AdvanceDropDown(
                      hint: "fffff",
                      onChangeinside: (newValue) {},
                      value: _value,
                      width: 300,
                      height: 50,
                      listdropdown: _itemDropdown),
                  const SizedBox(
                    height: 10,
                  ),
                  AdvanceDropDown(
                      hint: "fffff",
                      onChangeinside: (newValue) {},
                      value: _value,
                      width: 300,
                      height: 50,
                      listdropdown: _itemDropdown),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 15, 40, 20),
                    child: Line(), //*เส้นตรง
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    spacing: 15.0, // gap between adjacent chips
                    runSpacing: 15.0,

                    children: const [
                      BoxShowDataSource(
                        color: Color(0xffFFF3C8),
                        title: "RowRick",
                        subtitle: "จำนวนผู้ป่วยกลุ่มเสียงต่อการฆ่าตัวตายต่ำ",
                        subtitle1: "9,999",
                        subtitle2: "คน",
                      ),
                      BoxShowDataSource(
                        color: Color(0xffFFDFC9),
                        title: "RowRick",
                        subtitle: "จำนวนผู้ป่วยกลุ่มเสียงต่อการฆ่าตัวตายต่ำ",
                        subtitle1: "9,999",
                        subtitle2: "คน",
                      ),
                      BoxShowDataSource(
                        color: Color(0xffFFEBEB),
                        title: "RowRick",
                        subtitle: "จำนวนผู้ป่วยกลุ่มเสียงต่อการฆ่าตัวตายต่ำ",
                        subtitle1: "9,999",
                        subtitle2: "คน",
                      ),
                      BoxShowDataSource(
                        color: Color(0xffDFB9FF),
                        title: "RowRick",
                        subtitle: "จำนวนผู้ป่วยกลุ่มเสียงต่อการฆ่าตัวตายต่ำ",
                        subtitle1: "9,999",
                        subtitle2: "คน",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BottomAppBar_NongTongCS(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
