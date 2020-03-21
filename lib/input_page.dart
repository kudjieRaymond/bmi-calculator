import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 60.0;
const activeCardColour = Color(0XFF1D1E33);
const inactiveCardColour = Color(0XFF111328);
const bottomContainerColour = Color(0XFFE81555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon:FontAwesomeIcons.mars, label:'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0XFF101E33),
                    cardChild: IconContent(icon:FontAwesomeIcons.venus, label:'FEMALE'),

                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColour), //Color(0XFF101E33)
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: Color(0XFF101E33)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0XFF101E33)),
                )
              ],
            ),
          ),
          Container(
            color:bottomContainerColour,
            height: bottomContainerHeight,
            width: double.infinity,
            margin:EdgeInsets.only(top:5.0)
          ),
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.purple),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}



