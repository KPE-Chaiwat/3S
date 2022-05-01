import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/BlocEvent/LoginEvent.dart';
import '../../../mainBody.dart';
import '../../../widget/common/ComInputText.dart';
import '../../ConStant/constant.dart';
import 'Conponent_LoginScreen/ButtonCustom.dart';
import 'Conponent_LoginScreen/ForgotPass.dart';
import 'Conponent_LoginScreen/Logo_Sar.dart';
import 'Conponent_LoginScreen/SimpleText.dart';
import 'Conponent_LoginScreen/TextSuicidality.dart';
import 'Conponent_LoginScreen/lineCustom.dart';

class LoginScreen_TongCS extends StatelessWidget {
  const LoginScreen_TongCS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = 300.0;
    SizedBox space(double height) => SizedBox(
          height: height,
        );
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: _width,
          color: Colors.amber,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                space(30),
                const LogoSar(),
                const LineContainer(),
                space(20),
                const Suicidality(
                  title: "Suicidality and",
                ),
                const Suicidality(
                  title: "Rick Assessment",
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
                SimpleText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
class LoginScreen_TongCS extends StatelessWidget {
  const LoginScreen_TongCS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          width: 350,
          child: SingleChildScrollView(
              child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 50, end: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 100,
                    // width: 300,
                    decoration: const BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo_tpk.png"),
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    // child: TextFormField(
                    //   onChanged: (value) {},
                    //   initialValue: "",
                    //   decoration: InputDecoration(
                    //     contentPadding: EdgeInsets.all(8),
                    //     hintText: 'TPK ID',
                    //     hintStyle: const TextStyle(
                    //       fontFamily: 'Mitr',
                    //       color: Color(0xffb2b2b2),
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w300,
                    //       fontStyle: FontStyle.normal,
                    //       letterSpacing: 0,
                    //     ),
                    //     border: OutlineInputBorder(
                    //       borderSide:
                    //           const BorderSide(color: Colors.red, width: 1),
                    //       borderRadius: BorderRadius.circular(8),
                    //     ),
                    //     // suffixIcon: Icon(
                    //     //   Icons.search,
                    //     // ),
                    //   ),
                    // ),
                    child: ComInputText(
                      height: 40,
                      width: 240,
                      isContr: Logindata_constant.isControl,
                      fnContr: (input) {
                        Logindata_constant.isControl = input;
                      },
                      sValue: Logindata_constant.userID,
                      returnfunc: (String s) {
                        Logindata_constant.userID = s;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    // child: TextFormField(
                    //   onChanged: (value) {},
                    //   obscureText: true,
                    //   initialValue: "",
                    //   decoration: InputDecoration(
                    //     contentPadding: EdgeInsets.all(8),
                    //     hintText: 'Password',
                    //     hintStyle: const TextStyle(
                    //       fontFamily: 'Mitr',
                    //       color: Color(0xffb2b2b2),
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w300,
                    //       fontStyle: FontStyle.normal,
                    //       letterSpacing: 0,
                    //     ),
                    //     border: OutlineInputBorder(
                    //       borderSide:
                    //           const BorderSide(color: Colors.red, width: 1),
                    //       borderRadius: BorderRadius.circular(8),
                    //     ),

                    //     // suffixIcon: Icon(
                    //     //   Icons.search,
                    //     // ),
                    //   ),
                    // ),
                    child: ComInputText(
                      height: 40,
                      width: 240,
                      isPassword: true,
                      isContr: Logindata_constant.isControl,
                      fnContr: (input) {
                        Logindata_constant.isControl = input;
                      },
                      sValue: Logindata_constant.userPASS,
                      returnfunc: (String s) {
                        Logindata_constant.userPASS = s;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const _LoginSignin(),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}

class _LoginSignin extends StatelessWidget {
  const _LoginSignin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // BlocProvider.of<SwPageCubit>(context).togglePage("Page1");
          LoginContext.read<Login_Bloc>().add(LoginPage());
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              "Sign IN",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
          ),
        ));
  }
}
*/
