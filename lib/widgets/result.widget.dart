import 'package:calc_imc/widgets/imc-list.widget.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  String result;
  Resultado({
    @required this.result,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: 400,
        height: 305,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "$result",
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 250,
                child: ListView(
                  children: <Widget>[
                    ItemIMC(
                      colorBg: Colors.purple[900],
                      tipoIMC: "Obesidade III (Mórbita) Acima de 40",
                    ),
                    ItemIMC(
                      colorBg: Colors.purple[800],
                      tipoIMC: "Obesidade II (Severa) Entre 35 - 39.99",
                    ),
                    ItemIMC(
                      colorBg: Colors.purple[700],
                      tipoIMC: "Obesidade I  Entre 30 - 34.99",
                    ),
                    ItemIMC(
                      colorBg: Colors.purple[600],
                      tipoIMC: "Acima do peso Entre 25 - 29.99",
                    ),
                    ItemIMC(
                      colorBg: Colors.purple[500],
                      tipoIMC: "Peso normal Entre 18,5 - 24.99",
                    ),
                    ItemIMC(
                      colorBg: Colors.purple[400],
                      tipoIMC: "Abaixo do peso Entre 17 - 18.49",
                    ),
                    ItemIMC(
                      colorBg: Colors.purple[300],
                      tipoIMC: "Muito abaixo do peso Abaixo de 17",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
