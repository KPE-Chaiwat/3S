// import 'package:flutter/material.dart';

// class AdvanceDropDown_NongTongCs extends StatefulWidget {
//   AdvanceDropDown_NongTongCs({
//     Key? key,
//     this.listdropdown,
//     required this.onChangeinside,
//     required this.value,
//     required this.width,
//     required this.height,
//   }) : super(key: key);
//   List<MapEntry<String, String>>? listdropdown;
//   Function onChangeinside;
//   String value;
//   double width;
//   double height;

//   @override
//   State<AdvanceDropDown_NongTongCs> createState() =>
//       _AdvanceDropDown_NongTongCsState();
// }

// class _AdvanceDropDown_NongTongCsState
//     extends State<AdvanceDropDown_NongTongCs> {
//   @override
//   Widget build(BuildContext context) {
//     List<MapEntry<String, String>> _listdropdown =
//         widget.listdropdown ?? [MapEntry("", "")];

//     //AdvanceDropDownOB(text: "DYNAMIC", value: "DYNAMIC-V")
//     List<DropdownMenuItem<String>> menuItems = [
//       DropdownMenuItem(child: Text(""), value: "")
//     ];

//     return SizedBox(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text("data", style: TextStyle(fontSize: 12.0)),
//           const SizedBox(
//             height: 5,
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 10, right: 10),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               border: Border.all(
//                   color: Colors.black, style: BorderStyle.solid, width: 0.80),
//             ),
//             width: widget.width,
//             height: widget.height,
//             child: DropdownButton<String>(
//               // borderRadius: BorderRadius.all(Radius.circular(10)),
//               disabledHint: Text("123"),

//               value: widget.value,
//               isExpanded: true,
//               // iconDisabledColor: Colors.transparent,
//               // iconEnabledColor: Colors.transparent,
//               // icon: const Icon(Icons.arrow_downward),
//               // iconSize: 24,
//               // elevation: 16,
//               hint: const Text(
//                 "Please",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500),
//               ),
//               style: const TextStyle(color: Colors.black),
//               underline: Container(
//                 height: 2,
//                 color: Colors.transparent,
//               ),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   widget.onChangeinside(newValue!);
//                   widget.value = newValue;
//                 });
//               },
//               items: [
//                 for (int i = 0; i < _listdropdown.length; i++)
//                   DropdownMenuItem(
//                     value: _listdropdown[i].value,
//                     child: Text(_listdropdown[i].key.toString()),
//                   )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
