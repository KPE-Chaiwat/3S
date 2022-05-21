import 'package:flutter/material.dart';

class BoxShowDataSource extends StatelessWidget {
  const BoxShowDataSource(
      {Key? key,
      this.title,
      this.subtitle,
      this.subtitle1,
      this.subtitle2,
      required this.color})
      : super(key: key);
  final String? title, subtitle, subtitle1, subtitle2;
  final Color color;
  @override
  Widget build(BuildContext context) {
    const int _height_IphoneSE = 670;
    final double _query_height = MediaQuery.of(context).size.height;
    double _height =
        _query_height < _height_IphoneSE ? 140.0 : 155.0; //custom heightbox
    double _width =
        _query_height < _height_IphoneSE ? 135.0 : 150.0; //custom heightbox
    TextStyle _style(double size, bool fontWeight) => TextStyle(
        fontSize: size,
        fontWeight: fontWeight ? FontWeight.bold : FontWeight.normal);

    return Container(
        height: _height, //155,
        width: _width,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: 1.2,
            color: Colors.black38,
          ),
          borderRadius: const BorderRadius.all(
              Radius.circular(20.0) //                 <--- border radius here
              ),
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? "",
              style: _style(16, true),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle ?? "",
              style: _style(11, false),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              subtitle1 ?? "",
              style: _style(14, false),
            ),
            Text(
              subtitle2 ?? "",
              style: _style(11, false),
            ),
          ],
        ));
  }

  custtomHeightBox() {}
}
