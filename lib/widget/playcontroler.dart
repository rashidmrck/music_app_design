import 'package:flutter/material.dart';
import 'package:musicappdesign/colors.dart';

class PlayControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Controller(
            icon: Icons.repeat,
          ),
          Controller(
            icon: Icons.skip_previous,
          ),
          PlayControl(),
          Controller(
            icon: Icons.skip_next,
          ),
          Controller(
            icon: Icons.shuffle,
          ),
        ],
      ),
    );
  }
}

class Controller extends StatelessWidget {
  final IconData icon;

  const Controller({Key key, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5, 10),
            blurRadius: 10,
            spreadRadius: 3,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: darkPrimaryColor,
              boxShadow: [
                BoxShadow(
                  color: darkPrimaryColor.withOpacity(0.5),
                  offset: Offset(5, 10),
                  blurRadius: 10,
                  spreadRadius: 3,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-3, -4),
                  spreadRadius: -2,
                  blurRadius: 20,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,
            ),
            child: Center(
                child: Icon(
              icon,
              size: 30,
              color: darkPrimaryColor,
            )),
          )
        ],
      ),
    );
  }
}

class PlayControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5, 10),
            blurRadius: 10,
            spreadRadius: 3,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: darkPrimaryColor,
              boxShadow: [
                BoxShadow(
                  color: darkPrimaryColor.withOpacity(0.5),
                  offset: Offset(5, 10),
                  blurRadius: 10,
                  spreadRadius: 3,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-3, -4),
                  spreadRadius: -2,
                  blurRadius: 20,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,
            ),
            child: Center(
                child: Icon(
              Icons.play_arrow,
              size: 50,
              color: darkPrimaryColor,
            )),
          )
        ],
      ),
    );
  }
}
