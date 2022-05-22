import 'package:flutter/material.dart';

import '../../../widget/common/Checkbox.dart';
import 'compronent_mide6/ListTextSymptom.dart';
import 'compronent_mide6/TextString.dart';
import 'compronent_mide6/groupText_detailData.dart';

class Mide6 extends StatefulWidget {
  Mide6({Key? key}) : super(key: key);

  @override
  State<Mide6> createState() => _Mide6State();
}

class _Mide6State extends State<Mide6> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            spaceHeight(27.5),
            const TextStr(
              msg: "Mind-6",
              sizeMsg: 28.0,
              fontWeight: true,
            ),
            spaceHeight(12.0),
            const TextStr(
              msg: "แบบประเมินโรคจิต",
              sizeMsg: 18.0,
              fontWeight: true,
            ),
            spaceHeight(25.5),
            const TextStr(
              msg: "ผู้ป่วยมีอาการเหล่านี้เกิดขึ้นหรือไม่",
              sizeMsg: 14.0,
              fontWeight: true,
            ),
            const TextStr(
              msg: "ในช่วง 2 สัปดาห์ที่ผ่านมา",
              sizeMsg: 14.0,
            ),
            Row(
              children: [
                CheckBox(
                  getChbox: () {},
                  value: false,
                ),
                const TextStr(
                  msg: "มีลักษณะการพูดที่ผิดปกติ",
                  sizeMsg: 14.0,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 46.0),
              //height: 70,
              width: size.width,
              color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.speakingWrong,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  getChbox: () {},
                  value: false,
                ),
                const TextStr(
                  msg: "มีลักษณะการแต่งกายที่ผิดปกติ",
                  sizeMsg: 14.0,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 46.0),
              //height: 70,
              width: size.width,
              color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.dressingWrong,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  getChbox: () {},
                  value: false,
                ),
                const TextStr(
                  msg: "มีพฤติกรรมก้าวร้าว วุ่นวาย ทำร้ายผู้อื่น",
                  sizeMsg: 14.0,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 46.0),
              //height: 70,
              width: size.width,
              color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.aggressiveWrong,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  getChbox: () {},
                  value: false,
                ),
                const TextStr(
                  msg: "มีพฤติกรรมแยกตัวออกจากสังคม",
                  sizeMsg: 14.0,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 46.0),
              //height: 70,
              width: size.width,
              color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.separate,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  getChbox: () {},
                  value: false,
                ),
                const TextStr(
                  msg: "มีอาการหวาดระแวงโดยไม่มีเหตุผล",
                  sizeMsg: 14.0,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 46.0),
              //height: 70,
              width: size.width,
              color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.suspiciously,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  getChbox: () {},
                  value: false,
                ),
                const TextStr(
                  msg: "มีอาการหลงผิด หรือ สำคัญตนเองผิด",
                  sizeMsg: 14.0,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 46.0),
              //height: 70,
              width: size.width,
              color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.delusion,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  getChbox: () {},
                  value: false,
                ),
                const TextStr(
                  msg: "มีอาการหูแว่ว หรือ เห็นภาพหลอน",
                  sizeMsg: 14.0,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 46.0),
              //height: 70,
              width: size.width,
              color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.scare,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  getChbox: (bool? value) {
                    setState(() {
                      value!;
                    });
                  },
                  value: false,
                ),
                const TextStr(
                  msg: "มีพฤติกรรมอื่นที่ผิดปกติจากคนทั่วไป",
                  sizeMsg: 14.0,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 46.0),
              //height: 70,
              width: size.width,
              color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.disorders,
              ),
            ),
            spaceHeight(16.0),
          ],
        ),
      )),
    );
  }
}
