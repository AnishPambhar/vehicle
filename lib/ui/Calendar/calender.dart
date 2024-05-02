// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class HomeCalendarPage extends StatefulWidget {
//   @override
//   _HomeCalendarPageState createState() => _HomeCalendarPageState();
// }
//
// class _HomeCalendarPageState extends State<HomeCalendarPage> {
//   bool toggleValue = false;
//
//   CalendarController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = CalendarController();
//   }
//
//   toggleButton() {
//     setState(() {
//       toggleValue = !toggleValue;
//     });
//   }
//
//   Widget _entryField(String title, {bool isPassword = false}) {
//     return Container(
//       // decoration: BoxDecoration(
//       //   color: Colors.red,
//       //   borderRadius: BorderRadius.circular(25)
//       // ),
//       margin: EdgeInsets.symmetric(horizontal: 25),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             title,
//             style: TextStyle(
//                 fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
//           ),
//           // SizedBox(
//           //   height: 10,
//           // ),
//           TextField(
//             obscureText: isPassword,
//             decoration: InputDecoration(
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
//                 fillColor: Color(0xfff3f3f4),
//                 hintText: title,
//                 filled: true),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _emailPasswordWidget() {
//     return Column(
//       children: <Widget>[
//         // SizedBox(height: 8),
//         _entryField("Pickup Address"),
//         SizedBox(height: 8),
//         _entryField("Drop-off Address"),
//         SizedBox(height: 8),
//         _entryField("Enter Details"),
//         // _entryField("Address"),
//         // _entryField("Password", isPassword: true),
//         // _entryField("Confirm Password", isPassword: true),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.orange.shade300,
//         child: Container(
//           height: size.height * 0.07,
//           child: Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 18.0),
//                 child: Text(
//                   'Total 900',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//               ),
//               Spacer(),
//               InkWell(
//                 child: Padding(
//                   padding: const EdgeInsets.only(right: 18.0),
//                   child: Text(
//                     "Proceed",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 onTap: () {
//                   print("value of your text");
//                 },
//               )
//
//               // IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
//             ],
//           ),
//         ),
//       ),
//       // appBar: AppBar(
//       //   backgroundColor: Colors.white,
//       //   leading: IconButton(
//       //     icon: Icon(Icons.keyboard_arrow_left, color: Colors.black),
//       //     onPressed: () {},
//       //   ),
//       //   title: Text(
//       //     'Select Date',
//       //     style: TextStyle(
//       //         fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
//       //   ),
//       // ),
//       body: SingleChildScrollView(
//         child: Container(
//           height: size.height,
//           width: size.width,
//           color: Colors.white,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               ClipRRect(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40),
//                   topRight: Radius.circular(40),
//                   bottomRight: Radius.circular(40),
//                   bottomLeft: Radius.circular(40),
//                 ),
//                 child: Container(
//                   height: size.height * 0.31,
//                   color: Colors.orange.shade300,
//                   child: TableCalendar(
//                     firstDay: DateTime.now().subtract(Duration(days: 365)),
//                     focusedDay: DateTime.now(),
//                     lastDay: DateTime.now().add(Duration(days: 365)),
//                     calendarFormat: CalendarFormat.week,
//                     calendarStyle: CalendarStyle(
//                       // todayColor: Colors.blue,
//                       // selectedColor: Theme.of(context).primaryColor,
//                       todayTextStyle: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 22.0,
//                         color: Colors.white,
//                       ),
//                     ),
//
//                     headerStyle: HeaderStyle(
//                       // centerHeaderTitle: true,
//                       formatButtonDecoration: BoxDecoration(
//                         color: Colors.orange.shade300,
//                         borderRadius: BorderRadius.circular(22.0),
//                       ),
//                       formatButtonTextStyle: TextStyle(color: Colors.orange.shade300),
//                       formatButtonShowsNext: false,
//                     ),
//                     startingDayOfWeek: StartingDayOfWeek.monday,
//                     onDaySelected: (DateTime date, DateTime focusedDay) {
//                       print(date.toUtc());
//                     },
//
//                     builders: CalendarBuilders(
//                       selectedDayBuilder: (context, date, events) => Container(
//                         margin: const EdgeInsets.all(5.0),
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                             color: Theme.of(context).primaryColor,
//                             borderRadius: BorderRadius.circular(8.0)
//                         ),
//                         child: Text(
//                           date.day.toString(),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                       todayDayBuilder: (context, date, events) => Container(
//                         margin: const EdgeInsets.all(5.0),
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                             color: Colors.blue,
//                             borderRadius: BorderRadius.circular(8.0)
//                         ),
//                         child: Text(
//                           date.day.toString(),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     calendarController: _controller,
//                   ),
//
//                 ),
//               ),
//               Container(
//                 height: size.height * 0.65,
//                 width: size.width,
//                 color: Colors.white,
//                 child: Column(
//                     // crossAxisAlignment: CrossAxisAlignment.start,
//
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 12, top: 10),
//                         child: Container(
//                           alignment: Alignment.topLeft,
//                           color: Colors.white,
//                           child: Text(
//                             'Select Time',
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             child: InkWell(
//                               onTap: () {
//                                 // Navigator.push(
//                                 //     context,
//                                 //     MaterialPageRoute(
//                                 //         builder: (context) =>
//                                 //             Settings()));
//                               },
//                               child: Container(
//                                 width: MediaQuery.of(context).size.width * 0.2,
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.09,
//                                 padding: EdgeInsets.symmetric(vertical: 10),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   color: Colors.orange.shade300,
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                                 child: Text(
//                                   'AM',
//                                   style: GoogleFonts.alegreya(
//                                       fontSize: 20, color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             child: InkWell(
//                               onTap: () {
//                                 // Navigator.push(
//                                 //     context,
//                                 //     MaterialPageRoute(
//                                 //         builder: (context) =>
//                                 //             Settings()));
//                               },
//                               child: Container(
//                                 // color: Colors.yellow.shade600,
//                                 width: MediaQuery.of(context).size.width * 0.2,
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.09,
//                                 padding: EdgeInsets.symmetric(vertical: 10),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   color: Colors.orange.shade300,
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                                 child: Text(
//                                   'PM',
//                                   style: GoogleFonts.alegreya(
//                                       fontSize: 20, color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             child: InkWell(
//                               onTap: () {
//                                 // Navigator.push(
//                                 //     context,
//                                 //     MaterialPageRoute(
//                                 //         builder: (context) =>
//                                 //             Settings()));
//                               },
//                               child: Container(
//                                 width: MediaQuery.of(context).size.width * 0.2,
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.05,
//                                 // padding: EdgeInsets.symmetric(
//                                 //     vertical: 5),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   color: Colors.orange.shade300,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Text(
//                                   '9-5',
//                                   style: GoogleFonts.alegreya(
//                                       fontSize: 18, color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             child: InkWell(
//                               onTap: () {
//                                 // Navigator.push(
//                                 //     context,
//                                 //     MaterialPageRoute(
//                                 //         builder: (context) =>
//                                 //             Settings()));
//                               },
//                               child: Container(
//                                 // color: Colors.yellow.shade600,
//                                 width: MediaQuery.of(context).size.width * 0.2,
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.05,
//                                 // padding: EdgeInsets.symmetric(
//                                 //     vertical: 5),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   color: Colors.orange.shade300,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Text(
//                                   '6-11',
//                                   style: GoogleFonts.alegreya(
//                                       fontSize: 18, color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       SingleChildScrollView(
//                         child: Container(
//                             height: size.height * 0.34,
//                             // width: size.width,
//                             // color: Colors.red,
//                             child: _emailPasswordWidget()),
//                       ),
//                       // Padding(
//                       //   padding: const EdgeInsets.only(left: 12.0, top: 10),
//                       //   child: Container(
//                       //     height: size.height * 0.1,
//                       //     color: Colors.white,
//                       //     child: Row(
//                       //       children: [
//                       //         Container(
//                       //           child: Text(
//                       //             'PickUp Required',
//                       //             style: TextStyle(
//                       //                 fontSize: 20,
//                       //                 fontWeight: FontWeight.bold),
//                       //           ),
//                       //         ),
//                       //         // SizedBox(width: 40,),
//                       //         //  AnimatedContainer(
//                       //         //   duration: Duration(milliseconds: 1000),
//                       //         //   height:size.height*0.05 ,
//                       //         //   width: size.width*0.13,
//                       //         //   decoration: BoxDecoration(
//                       //         //     borderRadius: BorderRadius.circular(15.0),
//                       //         //     color:toggleValue? Colors.blue: Colors.red,
//                       //         //
//                       //         //   ),
//                       //         //   child:Stack(
//                       //         //     children:<Widget> [
//                       //         //
//                       //         //       AnimatedPositioned(
//                       //         //         duration: Duration(milliseconds: 1000),
//                       //         //         curve: Curves.easeIn,
//                       //         //         top: 2.0,
//                       //         //         left: toggleValue? 5.0: 0.0,
//                       //         //         right: toggleValue?0.0: 5.0,
//                       //         //         child: InkWell(
//                       //         //           onTap: toggleButton,
//                       //         //           child: AnimatedSwitcher(
//                       //         //             duration: Duration(milliseconds: 1000),
//                       //         //             transitionBuilder: (Widget child, Animation<double> animation){
//                       //         //               return RotationTransition( child: child,turns: animation);
//                       //         //             },
//                       //         //             child: toggleValue? Icon(Icons.check_circle,color: Colors.green, size: 35.0,
//                       //         //             key:UniqueKey()
//                       //         //             ):  Icon(Icons.check_circle_outline,color: Colors.green, size: 35.0,
//                       //         //                 key:UniqueKey()
//                       //         //           ),
//                       //         //
//                       //         //         ),
//                       //         //       )
//                       //         //
//                       //         //       )],
//                       //         //   ),
//                       //         //
//                       //         // ),
//                       //       ],
//                       //     ),
//                       //   ),
//                       // ),
//                     ]),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
