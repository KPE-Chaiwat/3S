import 'package:flutter/material.dart';

import '../../../../widget/common/Checkbox.dart';
import '../../../TongCustom/ConStant/constant.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword(
      {Key? key,
      required this.getChbox,
      required this.value,
      required this.forgotFunc})
      : super(key: key);

  Function? getChbox;
  bool? value;
  Function() forgotFunc;
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle = const TextStyle(fontSize: 16.0, color: Colors.black);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              CheckBox(
                value: widget.value,
                getChbox: (bool? value) {
                  widget.getChbox!(value!);
                },
              ),
              Text(
                "จดจำฉัน",
                style: _textStyle,
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: widget.forgotFunc,
          child: Text(
            "ลืมรหัสผ่าน?",
            style: _textStyle,
          ),
        )
      ],
    );
  }
}
