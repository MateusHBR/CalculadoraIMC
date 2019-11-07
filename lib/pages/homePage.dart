import 'dart:math';

import 'package:calc_imc/widgets/form.widget.dart';
import 'package:calc_imc/widgets/result.widget.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _alt = TextEditingController();
  var _pe = TextEditingController();
  var _result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Center(
          child: Text("Calculadora de IMC"),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                FormHome(
                  altCtrl: _alt,
                  peCtrl: _pe,
                  submit: calculate,
                ),
                SizedBox(
                  height: 10,
                ),
                Resultado(
                  result: _result,
                ),
              ],
            ),
          )),
    );
  }

  calculate() {
    double peso = double.parse(_pe.text);

    double altura = double.parse(_alt.text);

    double result = peso / pow(altura, 2);

    print(result);
    setState(() {
      _result = "Seu imc é: ${result.toStringAsFixed(2)}";
    });
    print("teste");
  }
}
