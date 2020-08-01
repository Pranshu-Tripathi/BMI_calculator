import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.childBox});
  final Color colour;
  final Widget childBox;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childBox,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),

        color: colour,
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}