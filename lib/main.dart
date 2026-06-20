import 'package:flutter/material.dart';

import 'package:learn_flutter_68_2/screen/home.dart';

import 'package:learn_flutter_68_2/screen/item.dart';

import 'package:learn_flutter_68_2/screen/addfrom.dart';

import 'package:learn_flutter_68_2/screen/addfrom.dart';

void main() {

//  // const app = MaterialApp(title: "หัวข้อ", home: Text("Hello World"));
//   // runApp(app);


// runApp(
//   MaterialApp(
//     title: "หัวข้อ",
//     home: Scaffold(
//     appBar: AppBar(
//       title: Text("หัวข้อ"),
//       backgroundColor: Colors.pinkAccent,
//       centerTitle: true,
//       ),
//       body: Item(),
//     ),
//   ),
// );
// }

// class Home extends StatelessWidget {
//   const Home ({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         color: Colors.redAccent,
//         margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         padding: EdgeInsets.all(50),
//         child: Text(
//           "Hello World 3",
//           style: TextStyle(fontSize: 30, color: Colors.white),
//         ),
//       ),
//     );
//   }
// }

runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Add Person"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Item(),
      ),
    );
  }
}