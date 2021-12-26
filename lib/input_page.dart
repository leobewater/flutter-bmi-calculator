import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

// constants
const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                      cardChild: IconContent(
                        label: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                      cardChild: IconContent(
                        label: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity, // full-width
              height: bottomContainerHeight,
            ),
          ],
        )
        // wrap widget with Theme with ThemeData to customize the style of it
        // floatingActionButton: Theme(
        //   data: ThemeData(
        //     colorScheme:
        //         ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
        //   ),
        //   child: FloatingActionButton(
        //     child: Icon(Icons.add),
        //   ),
        // ),
        );
  }
}
