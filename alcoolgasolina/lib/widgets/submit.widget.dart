import 'package:alcoolgasolina/widgets/input.widget.dart';
import 'package:alcoolgasolina/widgets/loading_button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';


class SubmitForm extends StatelessWidget {
  var gasController = new MoneyMaskedTextController();
  var alcoolController = new MoneyMaskedTextController();
  var busyLoad = false;
  Function submitFunc;

  SubmitForm({
    @required this.alcoolController,
    @required this.gasController,
    @required this.busyLoad,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            label: "Gasolina",
            controller: gasController,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            label: "Álcool",
            controller: alcoolController,
          ),
        ),

        SizedBox(
          height: 25,
        ),
        //botao de load
        LoadingButton(
          busy: busyLoad,
          func: submitFunc,
          text: "CALCULAR",
          invert: false,
        ),
      ],
    );
  }
}
