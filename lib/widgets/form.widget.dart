import 'package:flutter/material.dart';

import 'buttom.widget.dart';
import 'input.widget.dart';

class FormHome extends StatelessWidget {
  Function submit;
  var altCtrl = TextEditingController();
  var peCtrl = TextEditingController();

  FormHome({
    @required this.submit,
    @required this.altCtrl,
    @required this.peCtrl,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Input(
          ctrl: altCtrl,
          marginTop: 60,
          label: "Altura:",
          icone: Icon(
            Icons.accessibility,
            color: Colors.white,
          ),
        ),
        Input(
          ctrl: peCtrl,
          marginTop: 20,
          label: "Peso:",
          icone: Icon(
            Icons.fitness_center,
            color: Colors.white,
          ),
        ),
        ButtomCalc(
          funcao: submit,
        ),
      ],
    );
  }
}
