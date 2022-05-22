import 'package:flutter/material.dart';
import 'package:tpk_login_v2/TongCustom/Screen/SignIn_Screen/Conponent_LoginScreen/Logo_Sar.dart';
import 'package:tpk_login_v2/TongCustom/Screen/SignIn_Screen/Conponent_LoginScreen/SimpleText.dart';
import 'package:tpk_login_v2/TongCustom/Screen/SignIn_Screen/Conponent_LoginScreen/TextSuicidality.dart';

import '../../../widget/common/ComInputText.dart';
import '../../ConStant/constant.dart';

import 'Conponent_LoginScreen/ButtonCustom.dart';
import 'Conponent_LoginScreen/ForgotPass.dart';
import 'Conponent_LoginScreen/lineCustom.dart';

class LoginScreen_TongCS extends StatelessWidget {
  const LoginScreen_TongCS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    SizedBox space(double height) => SizedBox(
          height: height,
        );
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              space(30),
              const LogoSar(),
              const LineContainer(),
              space(20),
              Suicidality(
                maxwidth: _width,
                title: "Suicidality and Rick Assessment",
              ),
              space(30),
              ComInputText(
                sPlaceholder: "เลขประจำตัวผู้เก็บข้อมูล",
                height: 40,
                width: _width,
                isContr: Logindata_constant.isControl,
                fnContr: (input) {
                  Logindata_constant.isControl = input;
                },
                sValue: Logindata_constant.userID,
                returnfunc: (String s) {
                  Logindata_constant.userID = s;
                },
                isEnabled: true,
              ),
              space(30),
              ComInputText(
                  sPlaceholder: "รหัสผ่าน",
                  height: 40,
                  width: _width,
                  isContr: Logindata_constant.isControl,
                  fnContr: (input) {
                    Logindata_constant.isControl = input;
                  },
                  sValue: Logindata_constant.userID,
                  returnfunc: (String s) {
                    Logindata_constant.userID = s;
                  },
                  isEnabled: true,
                  isPassword: true),
              space(20),
              const ForgotPassword(),
              space(50),
              const ButtonCS(
                  colorButton: Colors.black,
                  colorText: Colors.white,
                  textInButton: " ผู้ใช้งาน"),
              space(30),
              const ButtonCS(
                  colorBorder: Colors.black,
                  colorButton: Colors.white,
                  colorText: Colors.black,
                  textInButton: "ลงทะเบียนผู้ใช้งานใหม่"),
              space(80),
            ],
          ),
        ),
      ),
    );
  }
}
