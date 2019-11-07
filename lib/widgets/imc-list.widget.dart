import 'package:flutter/material.dart';

class ItemIMC extends StatelessWidget {
  Color colorBg;
  String tipoIMC;
  ItemIMC({
    @required this.colorBg,
    @required this.tipoIMC,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Container(
        width: 400,
        height: 60,
        decoration: BoxDecoration(
          color: colorBg,
        ),
        child: Center(
          child: Text(
            "$tipoIMC",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
