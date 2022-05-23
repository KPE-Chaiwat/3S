import 'package:flutter/material.dart';
import '../../widget/common/ComInputText.dart';
import 'Conpronent_Signin/ButtonCustom.dart';
import 'Conpronent_Signin/ForgotPass.dart';
import 'Conpronent_Signin/Logo_Sar.dart';
import 'Conpronent_Signin/SimpleText.dart';
import 'Conpronent_Signin/TextSuicidality.dart';
import 'Conpronent_Signin/lineCustom.dart';
import 'SigninVar.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                isContr: true,
                // fnContr: (input) {
                //   Logindata_constant.isControl = input;
                // },
                sValue: DataSignin.userId.str,
                returnfunc: (String s) {
                  DataSignin.userId.str = s;
                },
                isEnabled: true,
              ),
              space(30),
              ComInputText(
                  sPlaceholder: "รหัสผ่าน",
                  height: 40,
                  width: _width,
                  isContr: true,
                  // fnContr: (input) {
                  //   Logindata_constant.isControl = input;
                  // },
                  sValue: DataSignin.passWord.str,
                  returnfunc: (String s) {
                    DataSignin.passWord.str = s;
                  },
                  isEnabled: true,
                  isPassword: true),
              space(20),
              ForgotPassword(
                //จดจำฉัน
                value: DataSignin.rememberUserPass.bools,
                getChbox: (bool? value) {
                  setState(() {
                    DataSignin.rememberUserPass.bools = value!;
                  });
                },
                forgotFunc: () {
                  print("parin");
                }, //ลืมรหัสผ่าน?
              ),
              space(50),
              const ButtonCS(
                  colorButton: Colors.black,
                  colorText: Colors.white,
                  textInButton: "ผู้ใช้งาน"),
              space(30),
              const ButtonCS(
                  colorBorder: Colors.black,
                  colorButton: Colors.white,
                  colorText: Colors.black,
                  textInButton: "ลงทะเบียนผู้ใช้งานใหม่"),
              space(80),
              SimpleText()
            ],
          ),
        ),
      ),
    );
  }
}
