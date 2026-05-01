// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.blue,
//         appBar: AppBar(
//           title: Text(
//             "Home Screen",
//             style: TextStyle(color: Colors.black, fontWeight: FontWeight(10)),
//           ),
//           elevation: 0,
//           leading: Icon(Icons.menu),
//           actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
//         ),

//         //Container - child
//         // body: Center(
//         //   child: Container(
//         //     height: 300,
//         //     width: 300,
//         //     decoration: BoxDecoration(
//         //       color: Colors.green,
//         //       borderRadius: BorderRadius.circular(20),
//         //     ),
//         //     padding: EdgeInsets.all(25),
//         //     child: Text(
//         //       "You are mine!",
//         //       style: TextStyle(fontWeight: FontWeight.bold),
//         //     ),
//         //   ),
//         // ),

//         //Column, ListView - Children
//         // body: Column(
//         //   children: [
//         //     //1st box
//         //     Expanded(
//         //       child: Container(
//         //         decoration: BoxDecoration(
//         //           color: Colors.green,
//         //           borderRadius: BorderRadius.circular(20),
//         //         ),
//         //         padding: EdgeInsets.all(25),
//         //         child: Text(
//         //           "You are mine!",
//         //           style: TextStyle(fontWeight: FontWeight.bold),
//         //         ),
//         //       ),
//         //     ),

//         //     //2nd box
//         //     Expanded(
//         //       child: Container(
//         //         decoration: BoxDecoration(
//         //           color: Colors.green,
//         //           borderRadius: BorderRadius.circular(20),
//         //         ),
//         //         padding: EdgeInsets.all(25),
//         //         child: Text(
//         //           "You are mine!",
//         //           style: TextStyle(fontWeight: FontWeight.bold),
//         //         ),
//         //       ),
//         //     ),

//         //     //3rd box
//         //     Expanded(
//         //       child: Container(
//         //         decoration: BoxDecoration(
//         //           color: Colors.green,
//         //           borderRadius: BorderRadius.circular(20),
//         //         ),
//         //         padding: EdgeInsets.all(25),
//         //         child: Text(
//         //           "You are mine!",
//         //           style: TextStyle(fontWeight: FontWeight.bold),
//         //         ),
//         //       ),
//         //     ),
//         //   ],
//         // ),

//         //ListView.builder
//         // body: ListView.builder(
//         //   itemCount: 10,
//         //   itemBuilder: (context, index) =>
//         //       ListTile(title: Text(index.toString())),
//         // ),

//         //GridView.builder
//         // body: GridView.builder(
//         //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         //     crossAxisCount: 4,
//         //   ),
//         //   itemBuilder: (context, index) =>
//         //       Container(color: Colors.deepOrange, margin: EdgeInsets.all(2)),
//         // ),

//         //Stack
//         //Column, ListView - Children
//         body: Stack(
//           alignment: AlignmentGeometry.center,
//           children: [
//             //1st box
//             Container(
//               color: Colors.green,
//               padding: EdgeInsets.all(25),
//               height: 300,
//               width: 300,
//               child: Text(
//                 "You are mine!",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),

//             //2nd box
//             Container(
//               color: Colors.blue,
//               padding: EdgeInsets.all(25),
//               height: 200,
//               width: 200,
//               child: Text(
//                 "You are mine!",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),

//             //3rd box
//             Container(
//               color: Colors.orange,
//               padding: EdgeInsets.all(25),
//               height: 100,
//               width: 100,
//               child: Text(
//                 "You are mine!",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
