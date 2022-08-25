import 'package:flutter/material.dart';
import 'Firm.dart';

// class Detail extends StatefulWidget {
//   const Detail({Key? key}) : super(key: key);
//
//   @override
//   State<Detail> createState() => _DetailState();
// }
//
// class _DetailState extends State<Detail> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: GestureDetector(
//           onTap: () {
//             FocusScope.of(context).unfocus();
//           },
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("DOB"),
//                       Container(
//                         margin: EdgeInsets.only(
//                           top: 10,
//                         ),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color.fromARGB(106, 197, 215, 238),
//                               offset: Offset(2, 2.5),
//                               blurRadius: 10,
//                               spreadRadius: 3,
//                             ),
//                             BoxShadow(
//                               color: Colors.white,
//                               offset: Offset(-4, -4),
//                               blurRadius: 10,
//                             ),
//                           ],
//                           gradient: LinearGradient(
//                             begin: Alignment.topRight,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               Color(0xffd6e3f3),
//                               Color.fromARGB(255, 247, 245, 245),
//                               Colors.white,
//                             ],
//                           ),
//                         ),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                             ),
//                             hintText: "12 March 2020",
//                             hintStyle: TextStyle(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Aadhaar Number"),
//                       Container(
//                         margin: EdgeInsets.only(
//                           top: 10,
//                         ),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color.fromARGB(106, 197, 215, 238),
//                               offset: Offset(2, 2.5),
//                               blurRadius: 10,
//                               spreadRadius: 3,
//                             ),
//                             BoxShadow(
//                               color: Colors.white,
//                               offset: Offset(-4, -4),
//                               blurRadius: 10,
//                             ),
//                           ],
//                           gradient: LinearGradient(
//                             begin: Alignment.topRight,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               Color(0xffd6e3f3),
//                               Color.fromARGB(255, 247, 245, 245),
//                               Colors.white,
//                             ],
//                           ),
//                         ),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                             ),
//                             hintText: "789455555555",
//                             hintStyle: TextStyle(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("PAN Number"),
//                       Container(
//                         margin: EdgeInsets.only(
//                           top: 10,
//                         ),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color.fromARGB(106, 197, 215, 238),
//                               offset: Offset(2, 2.5),
//                               blurRadius: 10,
//                               spreadRadius: 3,
//                             ),
//                             BoxShadow(
//                               color: Colors.white,
//                               offset: Offset(-4, -4),
//                               blurRadius: 10,
//                             ),
//                           ],
//                           gradient: LinearGradient(
//                             begin: Alignment.topRight,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               Color(0xffd6e3f3),
//                               Color.fromARGB(255, 247, 245, 245),
//                               Colors.white,
//                             ],
//                           ),
//                         ),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                             ),
//                             hintText: "ABIO1444555Z",
//                             hintStyle: TextStyle(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Address"),
//                       Container(
//                         margin: EdgeInsets.only(
//                           top: 10,
//                         ),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color.fromARGB(106, 197, 215, 238),
//                               offset: Offset(2, 2.5),
//                               blurRadius: 10,
//                               spreadRadius: 3,
//                             ),
//                             BoxShadow(
//                               color: Colors.white,
//                               offset: Offset(-4, -4),
//                               blurRadius: 10,
//                             ),
//                           ],
//                           gradient: LinearGradient(
//                             begin: Alignment.topRight,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               Color(0xffd6e3f3),
//                               Color.fromARGB(255, 247, 245, 245),
//                               Colors.white,
//                             ],
//                           ),
//                         ),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("City"),
//                       Container(
//                         margin: EdgeInsets.only(
//                           top: 10,
//                         ),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color.fromARGB(106, 197, 215, 238),
//                               offset: Offset(2, 2.5),
//                               blurRadius: 10,
//                               spreadRadius: 3,
//                             ),
//                             BoxShadow(
//                               color: Colors.white,
//                               offset: Offset(-4, -4),
//                               blurRadius: 10,
//                             ),
//                           ],
//                           gradient: LinearGradient(
//                             begin: Alignment.topRight,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               Color(0xffd6e3f3),
//                               Color.fromARGB(255, 247, 245, 245),
//                               Colors.white,
//                             ],
//                           ),
//                         ),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                             ),
//                             hintText: "City",
//                             hintStyle: TextStyle(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("State"),
//                       Container(
//                         margin: EdgeInsets.only(
//                           top: 10,
//                         ),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color.fromARGB(106, 197, 215, 238),
//                               offset: Offset(2, 2.5),
//                               blurRadius: 10,
//                               spreadRadius: 3,
//                             ),
//                             BoxShadow(
//                               color: Colors.white,
//                               offset: Offset(-4, -4),
//                               blurRadius: 10,
//                             ),
//                           ],
//                           gradient: LinearGradient(
//                             begin: Alignment.topRight,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               Color(0xffd6e3f3),
//                               Color.fromARGB(255, 247, 245, 245),
//                               Colors.white,
//                             ],
//                           ),
//                         ),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                             ),
//                             hintText: "State",
//                             hintStyle: TextStyle(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("PIN Code"),
//                       Container(
//                         margin: EdgeInsets.only(
//                           top: 10,
//                         ),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color.fromARGB(106, 197, 215, 238),
//                               offset: Offset(2, 2.5),
//                               blurRadius: 10,
//                               spreadRadius: 3,
//                             ),
//                             BoxShadow(
//                               color: Colors.white,
//                               offset: Offset(-4, -4),
//                               blurRadius: 10,
//                             ),
//                           ],
//                           gradient: LinearGradient(
//                             begin: Alignment.topRight,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               Color(0xffd6e3f3),
//                               Color.fromARGB(255, 247, 245, 245),
//                               Colors.white,
//                             ],
//                           ),
//                         ),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                             ),
//                             hintText: "Pin Code",
//                             hintStyle: TextStyle(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 20, top: 15),
//                       child: Text("Firm Information"),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 20, top: 15),
//                       child: Icon(Icons.keyboard_arrow_down_rounded),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
