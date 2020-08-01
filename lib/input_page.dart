import 'package:bmi_calculator/gender_cards.dart';
import 'package:bmi_calculator/reusable_cards.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const BottomContainerHeight = 80;
const activeCardColor = Color(0xFF1C1D33);
const inactiveCardColor = Color(0xFF111328);
const BottomContainerColor = Color(0xFFEB1555);

enum GenderType{
  male,
  female
}



class Inputpage extends StatefulWidget {
  @override
  InputpageState createState() => InputpageState();
}



class InputpageState extends State<Inputpage> {


  Color maleCardColour = inactiveCardColor;
  Color femaleCardColour = inactiveCardColor;


  void genCol(GenderType gen){
    if(gen == GenderType.male){
      if(maleCardColour == inactiveCardColor){
        maleCardColour = activeCardColor;
        femaleCardColour = inactiveCardColor;
      }else{
        maleCardColour = inactiveCardColor;
      }
    }if(gen == GenderType.female){
      if(femaleCardColour == inactiveCardColor){
        femaleCardColour = activeCardColor;
        maleCardColour = inactiveCardColor;
      }else{
        femaleCardColour = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        genCol(GenderType.male);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      childBox: GenderCard(image_dcider: FontAwesomeIcons.male,gender_string: "Male",),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        genCol(GenderType.female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColour,
                      childBox: GenderCard(image_dcider: FontAwesomeIcons.female,gender_string: "Female",),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


