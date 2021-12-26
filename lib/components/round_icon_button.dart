import 'package:flutter/material.dart';

// own widget
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.pressFunc});

  final IconData icon;
  final Function pressFunc;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: pressFunc,
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
