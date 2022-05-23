import 'package:flutter/material.dart';

import 'PatMind6var.dart';
import '../../widget/common/Checkbox.dart';
import 'detailMind6.dart/ListTextSymptom.dart';

import 'detailMind6.dart/TextString.dart';
import 'detailMind6.dart/groupText_detailData.dart';

class PatMind6 extends StatefulWidget {
  const PatMind6({Key? key}) : super(key: key);

  @override
  State<PatMind6> createState() => _PatMind6State();
}

class _PatMind6State extends State<PatMind6> {
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
                  value: DataBodyMind6.SpeakWrong.bools, //isChecked,
                  getChbox: (value) {
                    setState(() {
                      DataBodyMind6.SpeakWrong.bools = value;
                    });
                  },
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
              // color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.speakingWrong,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  value: DataBodyMind6.SuitUpWrong.bools,
                  getChbox: (value) {
                    setState(() {
                      DataBodyMind6.SuitUpWrong.bools = value;
                    });
                  },
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
              //color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.dressingWrong,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  value: DataBodyMind6.aggressiveW.bools,
                  getChbox: (value) {
                    setState(() {
                      DataBodyMind6.aggressiveW.bools = value;
                    });
                  },
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
              // color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.aggressiveWrong,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  value: DataBodyMind6.separateW.bools,
                  getChbox: (value) {
                    setState(() {
                      DataBodyMind6.separateW.bools = value;
                    });
                  },
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
              // color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.separate,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  value: DataBodyMind6.suspiciouslyW.bools,
                  getChbox: (value) {
                    setState(() {
                      DataBodyMind6.suspiciouslyW.bools = value;
                    });
                  },
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
              //  color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.suspiciously,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  getChbox: (value) {
                    setState(() {
                      DataBodyMind6.delusionW.bools = value;
                    });
                  },
                  value: DataBodyMind6.delusionW.bools,
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
              // color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.delusion,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  value: DataBodyMind6.scareW.bools,
                  getChbox: (value) {
                    setState(() {
                      DataBodyMind6.scareW.bools = value;
                    });
                  },
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
              //color: Colors.pink,
              child: ListSymptom(
                symptomText: GroupDetailMide6.scare,
              ),
            ),
            spaceHeight(16.0),
            Row(
              children: [
                CheckBox(
                  value: DataBodyMind6.disordersW.bools,
                  getChbox: (value) {
                    setState(() {
                      DataBodyMind6.disordersW.bools = value;
                    });
                  },
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
              // color: Colors.pink,
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
