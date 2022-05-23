import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tpk_login_v2/mainBody.dart';

import '../../../../bloc/BlocEvent/LoginEvent.dart';

class ButtonCS extends StatelessWidget {
  const ButtonCS(
      {Key? key,
      required this.colorButton,
      this.colorText,
      required this.textInButton,
      this.colorBorder})
      : super(key: key);
  final Color colorButton;
  final Color? colorText, colorBorder;
  final String textInButton;

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
              color: colorButton,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: colorBorder ?? Colors.black)),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              textInButton,
              style: TextStyle(
                fontFamily: 'Mitr',
                color: colorText ?? Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
          ),
        ));
  }
}
