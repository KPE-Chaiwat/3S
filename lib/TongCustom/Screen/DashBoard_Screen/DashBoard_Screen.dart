import 'package:flutter/material.dart';

import 'component_DBScreen/BoxShowData.dart';
import 'component_DBScreen/ButtonAppBar.dart';
import 'component_DBScreen/DropDown_NongTongCs.dart';
import 'component_DBScreen/line.dart';
import 'component_DBScreen/ Boxborder.dart';

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
    double specing_left_right = 30.0;
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TopBoxBorder(
            width: _width,
            color: Colors.white,
            title: 'สถิติการฆ่าตัวตายภายในพื้นที่'),
        Padding(
          padding: EdgeInsets.fromLTRB(
              specing_left_right, 15.0, specing_left_right, 10.0),
          child: Column(
            children: [
              AdvanceDropDown_NongTongCs(
                  topicOfDropdown: "เลือกระดับพื้นที่",
                  hint: "เขตสุขภาพ",
                  onChangeinside: (newValue) {},
                  value: _value,
                  width: _width,
                  height: 50,
                  listdropdown: _itemDropdown),
              const SizedBox(
                height: 10,
              ),
              AdvanceDropDown_NongTongCs(
                  topicOfDropdown: "เลือกพื้นที่",
                  hint: "เขตสุขภาพที่7",
                  onChangeinside: (newValue) {},
                  value: _value,
                  width: _width,
                  height: 50,
                  listdropdown: _itemDropdown),
            ],
          ),
        ),
        Line(
          padding_top: 0,
          padding_left: specing_left_right,
          padding_right: specing_left_right,
          padding_bottom: 10,
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
        const BottomAppBar_NongTongCS(),
      ],
    ));
  }
}
