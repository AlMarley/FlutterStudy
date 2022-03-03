import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(39, 40, 61, 1),
//       appBar: AppBar(
//         title: Text("Eu sou um programador"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 30,
//             ),
//             SizedBox(
//               height: 164.5,
//             ),
//             Center(
//               child: Column(
//                 children: [
//                   Text(
//                     'Dev Aldenor Torres',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                   Image.asset('images/dev.jpg'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        title: Text("Eu sou rico"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image.asset('images/rubi.png'),
      ),
    );
  }
}
