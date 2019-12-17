import 'package:flutter/material.dart';
import 'package:lab1test/screens/home.dart';

void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'test',
      home: Home(),
    );
  }
}





// void main() =>runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
  
//     return MaterialApp(
//       title: 'test',
//       home: Home(),
//     //   home: Scaffold(
//     //     appBar: AppBar(
//     //       backgroundColor: Colors.pinkAccent,
//     //       title: Text('Wellcome to Mobile Programming Class'),
//     //     ),
//     //     backgroundColor: Colors.pink[100],
//     //     body: Center(
//     //     child: Text ('Hello\nLab 1'),
//     //     ),
//     // ),
//     );
//   }
// }
