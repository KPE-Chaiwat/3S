import 'package:flutter/material.dart';

import '../../../widget/common/Advancedropdown.dart';
import 'component_DBScreen/BottomAppBar.dart';
import 'component_DBScreen/BoxShowData.dart';

import 'component_DBScreen/line.dart';

class Dashborad extends StatefulWidget {
  Dashborad({Key? key}) : super(key: key);

  @override
  State<Dashborad> createState() => _DashboradState();
}

class _DashboradState extends State<Dashborad> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _height = 844; //MediaQuery.of(context).size.width; //800;

    const List<MapEntry<String, String>> _itemDropdown = [
      MapEntry("1", "kku1"),
      MapEntry("2", "kku2"),
      MapEntry("3", "kku3"),
      MapEntry("4", "kku4"),
    ];
    String _value = "kku1";
    double specing_left_right = 30.0;
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
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                specing_left_right, 15.0, specing_left_right, 10.0),
            child: SizedBox(
              child: Column(
                children: [
                  spaceHeight(18.0),
                  const Text("สถิติการฆ่าตัวตายภายในพื้นที่",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.3600000015326909,
                      )),
                  spaceHeight(12.0),
                  AdvanceDropDown(
                      borderRaio: 10,
                      borderCO: Colors.black,
                      // topicOfDropdown: "เลือกระดับพื้นที่",
                      hint: "เขตสุขภาพ",
                      onChangeinside: (newValue) {},
                      value: _value,
                      width: size.width,
                      height: 50,
                      listdropdown: _itemDropdown),
                  spaceHeight(12.0),
                  AdvanceDropDown(
                      borderRaio: 10,
                      borderCO: Colors.black,
                      // topicOfDropdown: "เลือกพื้นที่",
                      hint: "เขตสุขภาพที่7",
                      onChangeinside: (newValue) {},
                      value: _value,
                      width: size.width,
                      height: 50,
                      listdropdown: _itemDropdown),
                  spaceHeight(12.0),
                  const Line(),
                  spaceHeight(12.0),
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
                ],
              ),
            ),
          ),
          BottomAppBar_NongTongCS()
        ],
      ),
    );
  }
}
