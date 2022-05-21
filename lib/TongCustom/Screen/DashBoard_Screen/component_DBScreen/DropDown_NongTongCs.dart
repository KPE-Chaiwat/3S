import 'package:flutter/material.dart';

class AdvanceDropDown_NongTongCs extends StatefulWidget {
  AdvanceDropDown_NongTongCs({
    Key? key,
    this.listdropdown,
    required this.onChangeinside,
    required this.value,
    required this.width,
    required this.height,
    required this.topicOfDropdown,
    this.hint,
  }) : super(key: key);
  List<MapEntry<String, String>>? listdropdown;
  Function onChangeinside;
  String value;
  double width;
  double height;
  String? hint;
  String topicOfDropdown;

  @override
  State<AdvanceDropDown_NongTongCs> createState() =>
      _AdvanceDropDown_NongTongCsState();
}

class _AdvanceDropDown_NongTongCsState
    extends State<AdvanceDropDown_NongTongCs> {
  String? _showstr;
  @override
  Widget build(BuildContext context) {
    List<MapEntry<String, String>> _listdropdown =
        widget.listdropdown ?? []; //MapEntry("", "")

    //AdvanceDropDownOB(text: "DYNAMIC", value: "DYNAMIC-V")
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text(""), value: "")
    ];

    List outputZ = [];

    List outputR = [
      for (int i = 0; i < _listdropdown.length; i++)
        DropdownMenuItem(
          value: _listdropdown[i].value,
          child: Text(_listdropdown[i].key.toString()),
        )
    ];

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.topicOfDropdown, style: TextStyle(fontSize: 12.0)),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: widget.width,
            height: widget.height,
            padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 0.80),
            ),
            child: DropdownButton<String>(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              // disabledHint: Text("123"),
              hint: Text(widget.hint ?? 'Select something'),
              // disabledHint: Text("Disable Hint"),
              value: _showstr,
              isExpanded: true,
              // iconDisabledColor: Colors.transparent,
              // iconEnabledColor: Colors.transparent,
              // icon: const Icon(Icons.arrow_downward),
              // iconSize: 24,
              // elevation: 16,

              style: const TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.transparent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  widget.onChangeinside(newValue!);
                  widget.value = newValue;
                  _showstr = newValue;
                });
              },

              items: [
                for (int i = 0; i < _listdropdown.length; i++)
                  DropdownMenuItem(
                    value: _listdropdown[i].value,
                    child: Text(_listdropdown[i].key.toString()),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// for (MapEntry<String, String> e in widget.listdropdown!.entries)
//             DropdownMenuItem(
//               value: e.value,
//               child: Text(e.key.toString()),
//             )