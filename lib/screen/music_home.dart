import 'package:flutter/material.dart';
import 'package:musicappdesign/colors.dart';
import 'package:musicappdesign/widget/albumart.dart';
import 'package:musicappdesign/widget/navbar.dart';
import 'package:musicappdesign/widget/playcontroler.dart';

class MusicHome extends StatefulWidget {
  @override
  _MusicHomeState createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  double value = 2;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          NavBar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return AlbumArt();
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            'MrCK',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: darkPrimaryColor,
            ),
          ),
          Text(
            'MrCk Song...',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: darkPrimaryColor,
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
                trackHeight: 5,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)),
            child: Slider(
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.3),
              value: value,
              onChanged: (value) {
                setState(() {
                  this.value = value;
                });
              },
              max: 20,
              min: 0,
            ),
          ),
          PlayControls()
        ],
      ),
    );
  }
}
