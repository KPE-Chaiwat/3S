import 'package:flutter/material.dart';

import '../../../page/P1SignIn/Conpronent_Signin/ButtonCustom.dart';
import '../../../widget/common/Advancedropdown.dart';
import '../../../widget/common/ComInputText.dart';

import 'Compronent_UserProfile/TopboxBorder.dart';
import 'Compronent_UserProfile/pictureProfile.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    Color _bgColor1 = Color(0xffFFE9F1);
    double _width = MediaQuery.of(context).size.width;
    double _height = 844;
    const List<MapEntry<String, String>> _itemDropdown = [
      MapEntry("1", "kku1"),
      MapEntry("2", "kku2"),
      MapEntry("3", "kku3"),
      MapEntry("4", "kku4"),
    ];
    String _value = "kku1";
    double specing_left_right = 30.0;
    return Container(
      width: _width,
      height: _height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              specing_left_right, 15.0, specing_left_right, 10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15.5,
              ),
              PictureProfile(),
              ComInputText(
                sLabel: "เลขประจำตัวผู้เก็บข้อมูล",
                sPlaceholder: "3012",
                isContr: false,
                returnfunc: () {},
                height: 40,
                width: _width,
              ),
              const SizedBox(
                height: 10,
              ),
              ComInputText(
                sLabel: "ชื่อผู้เก็บข้อมูล",
                sPlaceholder: "thawatchai",
                isContr: false,
                returnfunc: () {},
                height: 40,
                width: _width,
              ),
              const SizedBox(
                height: 10,
              ),
              ComInputText(
                sLabel: "Noisakun",
                sPlaceholder: "นามสกุลผู้เก็บข้อมูล",
                isContr: false,
                returnfunc: () {},
                height: 40,
                width: _width,
              ),
              const SizedBox(
                height: 10,
              ),
              AdvanceDropDown(
                  // topicOfDropdown: "ตำแหน่ง",
                  hint: _value,
                  onChangeinside: (newValue) {},
                  value: _value,
                  width: _width,
                  height: 40,
                  listdropdown: _itemDropdown),
              const SizedBox(
                height: 10,
              ),
              AdvanceDropDown(
                  // topicOfDropdown: "หน่วยงานสังกัด",
                  hint: "โรงพยาบาลจิตเวต",
                  onChangeinside: (newValue) {},
                  value: _value,
                  width: _width,
                  height: 40,
                  listdropdown: _itemDropdown),
              const SizedBox(
                height: 10,
              ),
              AdvanceDropDown(
                  // topicOfDropdown: "สังกัดพื้นที่",
                  hint: "เขตสุขภาพที่7",
                  onChangeinside: (newValue) {},
                  value: _value,
                  width: _width,
                  height: 40,
                  listdropdown: _itemDropdown),
              const SizedBox(
                height: 10,
              ),
              ComInputText(
                sLabel: "อีเมล์ที่ติดต่อได้",
                sPlaceholder: "thawatchai@kku.ac.th",
                isContr: false,
                returnfunc: () {},
                height: 40,
                width: _width,
              ),
              const SizedBox(
                height: 10,
              ),
              ComInputText(
                sLabel: "เบอร์โทรศัพท์ที่ติดต่อได้",
                sPlaceholder: "083033333",
                isContr: false,
                returnfunc: () {},
                height: 40,
                width: _width,
              ),
              const SizedBox(
                height: 20,
              ),
              const ButtonCS(
                  colorBorder: Colors.black,
                  colorButton: Colors.white,
                  colorText: Colors.black,
                  textInButton: "นโยบายข้อมูลส่วนบุคคล"),
              const SizedBox(
                height: 20,
              ),
              const ButtonCS(
                  colorBorder: Colors.black,
                  colorButton: Colors.white,
                  colorText: Colors.black,
                  textInButton: "เปลี่ยนพาสเวิร์ดเข้าใช้งาน"),
              const SizedBox(
                height: 20,
              ),
              const ButtonCS(
                  colorBorder: Colors.black,
                  colorButton: Colors.black,
                  colorText: Colors.white,
                  textInButton: "บันทึกข้อมูล"),
            ],
          ),
        ),
      ),
    );
  }
}
