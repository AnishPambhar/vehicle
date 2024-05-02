import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle/ui/DrawerScreens/MyBike/add_car.dart';
import 'add_bike.dart';

void run() => runApp(MyVehicle());

class MyVehicle extends StatefulWidget {
  @override
  _MyVehicleState createState() => _MyVehicleState();
}

class _MyVehicleState extends State<MyVehicle> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.black,
              ),
            ),
            Container(
              child: Text(
                'Add New Vehicle',
                style: GoogleFonts.alegreya(
                    fontSize: 20,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        // backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            color: Colors.orange[400],
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.1,
                  child: _backButton(),
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.9,
                  // color: Colors.black,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    child: Container(
                      // scrollDirection: Axis.vertical,
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  // width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height,
                                  width: size.width,
                                  height: size.height * 0.9,
                                  // color: Colors.black,
                                  child: DefaultTabController(
                                    length: 2,
                                    child: Scaffold(
                                      appBar: AppBar(
                                        toolbarHeight: 60,
                                        toolbarOpacity: 0.3,
                                        backgroundColor: Colors.white,
                                        centerTitle: true,
                                        bottom: PreferredSize(
                                            child: TabBar(
                                                unselectedLabelColor:
                                                    Colors.black,
                                                labelColor: Colors.orange,
                                                indicatorColor: Colors.orange,
                                                indicatorWeight: 2,
                                                tabs: [
                                                  Tab(
                                                    child: Text(
                                                      'Car',
                                                      style: TextStyle(
                                                          fontSize: 22),
                                                    ),
                                                  ),
                                                  Tab(
                                                    child: Text(
                                                      'Bike ',
                                                      style: TextStyle(
                                                          fontSize: 22),
                                                    ),
                                                  ),
                                                ]),
                                            preferredSize:
                                                Size.fromHeight(30.0)),
                                      ),
                                      body: TabBarView(
                                        children: <Widget>[
                                          Container(
                                            child: AddCar(),
                                          ),
                                          Container(
                                            //  Appetizers Container
                                            child: AddBike(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
