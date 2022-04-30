import 'package:flutter/material.dart';

import '../../../../widget/common/Checkbox.dart';
import '../../../ConStant/constant.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

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
                value: Logindata_constant.isChecked,
                getChbox: (value) {
                  setState(() {
                    Logindata_constant.isChecked = value;
                  });
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
          onPressed: () {},
          child: Text(
            "ลืมรหัสผ่าน?",
            style: _textStyle,
          ),
        )
      ],
    );
  }
}
