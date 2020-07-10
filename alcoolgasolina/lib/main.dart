import 'package:alcoolgasolina/pages/home.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
    return materialApp;
  }
}

// class HomePage extends StatelessWidget {
//   var _gasController = new MoneyMaskedTextController();

//   var _alcoolController = new MoneyMaskedTextController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //pegar a cor backgroud setada no material app
//       backgroundColor: Theme.of(context).primaryColor,
//       body: ListView(
//         children: <Widget>[
//           Logo(),

//           Success(
//             reset: (){},
//             result: "Compensa utilizar X",
//           ),

//           SubmitForm(
//             alcoolController: _alcoolController,
//             gasController: _gasController,
//             submitFunc: () {},
//             busy: false,
//           ),
//           // //linha de input para gasolina
//           // Input(
//           //   label: "Gasolina",
//           //   controller: _gasController,
//           // ),

//           // //linha de input para alcool
//           // Input(
//           //   label: "Alcool",
//           //   controller: _alcoolController,
//           // ),

//         ],
//       ),
//     );
//   }
// }
