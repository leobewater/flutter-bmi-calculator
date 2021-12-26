import 'package:flutter/material.dart';

// create own widget - stateless = immutable and variables should be used with "final" so that they can't be changed after decoration.
class ReusableCard extends StatelessWidget {
  // constructor and make named variable required
  ReusableCard({@required this.color, this.cardChild});

  final Color color; // need "final" make it immutable
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
