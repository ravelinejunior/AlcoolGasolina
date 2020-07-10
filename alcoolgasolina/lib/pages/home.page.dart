import 'package:alcoolgasolina/widgets/logo.widget.dart';
import 'package:alcoolgasolina/widgets/submit.widget.dart';
import 'package:alcoolgasolina/widgets/success.widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasController = new MoneyMaskedTextController();
  var _alcoolController = new MoneyMaskedTextController();
  var _busy = false;
  var _completed = false;
  var _resultText = "Compensa utilizar álcool";
  Color _color = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //pegar a cor backgroud setada no material app
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(
          milliseconds: 1200,
        ),
        color: _color,
        child: ListView(
          children: <Widget>[
            Logo(),
            //condição para caso a operação esteja completa
            _completed
                ? Success(
                    reset: reset,
                    result: _resultText,
                  )
                : SubmitForm(
                    alcoolController: _alcoolController,
                    gasController: _gasController,
                    busyLoad: _busy,
                    submitFunc: calculos,
                  ),
          ],
        ),
      ),
    );
  }

  Future calculos() {
    //converter variavel para double e criar regra de conversão de virgula para ponto
    double alcool = double.parse(
            _alcoolController.text.replaceAll(new RegExp(r'[,.]'), '')) /
        100;

    double gasolina =
        double.parse(_gasController.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;

    double res = alcool / gasolina;

    setState(() {
      _color = Colors.deepPurpleAccent;
      _completed = false;
      _busy = true;
    });

//configurar delay para exibição de mensagem
    return new Future.delayed(
        const Duration(seconds: 1),
        () => {
              setState(() {
                if (res >= 0.7) {
                  _resultText = "Compensa utilizar Gasolina";
                } else {
                  _resultText = "Compensa utilizar Alcool";
                }

                _busy = false;
                _completed = true;
              })
            });
  }

  //função para resetar estado inicial
  reset() {
    setState(() {
      _color = Colors.deepPurple;
      _alcoolController = new MoneyMaskedTextController();
      _gasController = new MoneyMaskedTextController();
      _completed = false;
      _busy = false;
    });
  }
}
