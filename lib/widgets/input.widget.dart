import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  double marginTop;
  var label;
  Icon icone;
  var ctrl = TextEditingController();

  Input({
    @required this.marginTop,
    @required this.label,
    @required this.icone,
    @required this.ctrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            alignment: Alignment.centerRight,
            child: Text(
              "$label",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextFormField(
              controller: ctrl,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(prefixIcon: icone),
              autocorrect: false,
            ),
          ),
          SizedBox(
            width: 40,
          ),
        ],
      ),
    );
  }
}
