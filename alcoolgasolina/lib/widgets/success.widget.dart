import 'package:alcoolgasolina/widgets/loading_button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {

  var result = "";
  Function reset;

  Success({
    @required this.reset,
    @required this.result
  });


  @override
  Widget build(BuildContext context) {
    return //linha para exibir resultado
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  result,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontFamily: "Big Shoulders Display",
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                //botao de load
                LoadingButton(
                  busy: false,
                  func: reset,
                  text: "CALCULAR NOVAMENTE",
                  invert: true,
                ),
              ],
            ),
          );
  }
}