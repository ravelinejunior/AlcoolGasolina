import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {

  var label = "";
  var controller = new MoneyMaskedTextController();

  Input({
    @required this.label,
    @required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Row(
            children: <Widget>[
              Container(
                width: 100,
                alignment: Alignment.centerRight,
                child: Text(
                  label,
                  style: TextStyle(
                    color: Colors.white,
                   // fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontFamily: "Big Shoulders Display",
                  ),
                ),
              ),

              SizedBox(width: 20),

              Expanded(
                child: TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: "Big Shouldeders Display",
                  ),
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ],
          );
  }
}