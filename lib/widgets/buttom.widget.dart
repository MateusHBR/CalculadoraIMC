import 'package:flutter/material.dart';

class ButtomCalc extends StatelessWidget {
  Function funcao;
  ButtomCalc({
    @required this.funcao,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: FlatButton(
        onPressed: funcao,
        child: Text(
          "CALCULAR",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
