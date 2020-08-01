import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextStyle = TextStyle(
    fontSize: 30
);


class GenderCard extends StatelessWidget {

  GenderCard({this.image_dcider,this.gender_string});
  String gender_string;
  IconData image_dcider;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          image_dcider,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender_string,style: labelTextStyle
        )
      ],
    );
  }
}
