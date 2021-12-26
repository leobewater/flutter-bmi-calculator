import 'package:flutter/material.dart';

// create own widget - stateless = immutable and variables should be used with "final" so that they can't be changed after decoration.
class ReusableCard extends StatelessWidget {
  // constructor and make named variable required
  ReusableCard({@required this.color, this.cardChild, this.tapFunc});

  final Color color; // need "final" make it immutable
  final Widget cardChild;
  final Function tapFunc; // passing a func as parameter

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapFunc,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
