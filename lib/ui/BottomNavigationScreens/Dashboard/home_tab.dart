import 'package:flutter/material.dart';
// import 'package:ride_booking/ui/BottomNavigationScreens/Dashboard/grid_view_Icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:vehicle/ui/BottomNavigationScreens/Dashboard/grid_view_Icons.dart';

// ignore: must_be_immutable
class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Column(
        children: <Widget>[
          SizedBox(height: size.height * 0.03),
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Container(
                width: size.width * 0.7,
                height: size.height * 0.2,
                child: GridViewContainer()),
          ),
          SizedBox(height: size.height * 0.01),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Your Current Bike',
              // textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 19),
            ),
          ),
          Container(
            width: size.width * 0.8,
            height: size.height * 0.16,
            // color: Colors.orange.shade200,
            child: Card(
              color: Colors.orange.shade100,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)),
              child: Stack(
                children: <Widget>[
                  Container(
                    // alignment: Alignment.center,
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Bajaj',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22),
                              ),
                              Text(
                                'Discover 135',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                  ),
                  Positioned(
                    top: 13,
                    width: size.width * 0.18,
                    height: size.height * 0.1,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35)),
                      elevation: 10,
                      child:
                          Icon(MdiIcons.bicycle, size: 30, color: Colors.black),
                      color: Colors.orange.shade200,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: Icon(MdiIcons.arrowRight),
                      onTap: () {
                        print('Tapped');
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
