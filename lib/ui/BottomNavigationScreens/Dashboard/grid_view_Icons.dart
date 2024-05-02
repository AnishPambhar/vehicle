import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GridViewContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: size.width * 0.7,
          height: size.height * 0.2,
          padding: EdgeInsets.only(top: size.height * 0.01),
          color: Colors.orangeAccent,
          child: GridView.count(
            shrinkWrap: false,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 0.0,
            childAspectRatio: 1.9,
            crossAxisCount: 4,
            primary: false,
            children: <Widget>[
              Container(child: Icon(MdiIcons.bicycle, color: Colors.white, size: 25)),
              Container(child: Icon(MdiIcons.handOkay, color: Colors.white, size: 25)),
              Container(child: Icon(MdiIcons.helpCircle, color: Colors.white, size: 25)),
              Container(child: Icon(MdiIcons.share, color: Colors.white, size: 25)),
              Container(child: Icon(MdiIcons.accountCheck, color: Colors.white, size: 25)),
              Container(child: Icon(MdiIcons.bicycle, color: Colors.white, size: 25)),
              Container(child: Icon(MdiIcons.exclamation, color: Colors.white, size: 25)),
              Container(child: Icon(MdiIcons.trackpad, color: Colors.white, size: 25)),
              Container(child: Icon(MdiIcons.carSettings, color: Colors.white, size: 25)),
              Container(child: Icon(MdiIcons.bicycle, color: Colors.white, size: 25)),
              Container(child: Icon(MdiIcons.graphql, color: Colors.white, size: 25)),
              Container(child: Icon(MdiIcons.pin, color: Colors.white, size: 25))
            ],
          ),
        ),
      ],
    );
  }
}
