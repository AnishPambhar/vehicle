import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle/ui/BottomNavigationScreens/AddScreen.dart';
import 'package:vehicle/ui/BottomNavigationScreens/Dashboard/dashboard_main.dart';
import 'package:vehicle/ui/BottomNavigationScreens/FeedScreen.dart';
import 'package:vehicle/ui/BottomNavigationScreens/NotificationScreen.dart';
import 'package:vehicle/ui/BottomNavigationScreens/ProfileScreen.dart';
import 'package:vehicle/ui/BottomNavigationScreens/SearchScreen.dart';
import 'package:vehicle/ui/Calendar/calender.dart';
import 'package:vehicle/ui/DrawerScreens/MyBike/vehicle.dart';
import 'package:vehicle/ui/DrawerScreens/about_us.dart';
import 'package:vehicle/ui/DrawerScreens/my_address.dart';
import 'package:vehicle/ui/DrawerScreens/profile.dart';
import 'package:vehicle/ui/Menu/menu.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 2 ;

  //  Calling all pages
  final MyVehicle _myVehicle = MyVehicle();
  final MenuScreen _menuScreen = MenuScreen();
  // final HomeCalendarPage _homeCalendarPage = HomeCalendarPage();
  final Dashboard _dashboard = Dashboard();
  // final FeedScreen _feedScreen = FeedScreen();
  final MyAddress _myAddress = MyAddress();
  final ProfileScreen _profileScreen = ProfileScreen();
  final AddScreen _addScreen = AddScreen();
  final NotificationScreen _notificationScreen = NotificationScreen();
  final SearchScreen _searchScreen = SearchScreen();

  Widget _showPage = new FeedScreen();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _myVehicle;
        break;
      case 1:
        return _myAddress;
        break;
      case 2:
        return _dashboard;
        break;
      case 3:
        return  Container();
        break;
      case 4:
        return _menuScreen;
        break;
      default:
        return new Container(
          child: Center(
              child:
                  Text('No page found by page chooser!', textScaleFactor: 2.0)),
        );
    }
  }

  Widget _drawerLogout() {
    return InkWell(
      // highlightColor: Colors.yellow,
      onTap: () {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.65,
          padding: EdgeInsets.symmetric(vertical: 18),
          // alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange.shade700),
            color: Colors.yellow.shade800,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Center(
            child: Text(
              'Logout',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
          ),
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
      home: Scaffold(
        // bottomNavigationBar: CurvedNavigationBar(
        //   index: pageIndex,
        //   height: 50.0,
        //   items: <Widget>[
        //     Icon(Icons.home_sharp, size: 25, color: Colors.white),
        //     Icon(Icons.location_on_sharp, size: 25, color: Colors.white),
        //     Icon(Icons.local_fire_department_sharp, size: 25, color: Colors.white),
        //     Icon(Icons.calendar_today_sharp, size: 25, color: Colors.white),
        //     Icon(Icons.view_headline_sharp, size: 25, color: Colors.white),
        //   ],
        //   color: Colors.orange,
        //   buttonBackgroundColor: Colors.orange,
        //   backgroundColor: Colors.transparent,
        //   animationCurve: Curves.fastLinearToSlowEaseIn,
        //   animationDuration: Duration(milliseconds: 900),
        //   onTap: (int tappedIndex) {
        //     setState(() {
        //       _showPage = _pageChooser(tappedIndex);
        //     });
        //   },
        //   letIndexChange: (index) => true,
        // ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        drawer: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
          child: Drawer(
            child: new ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                DrawerHeader(
                  child: ClipRRect(
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              child: Text('UA'),
                            ),
                            margin: EdgeInsets.only(left: 10),
                          ),
                          SizedBox(width: size.width * 0.04),
                          Text(
                            'Umair Ahmed',
                            style: GoogleFonts.alegreya(
                                fontSize: 20, color: Colors.black),
                          )
                        ],
                      ),
                      color: Colors.orange.shade200,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(65),
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(65)),
                  ),
                ),
                new Container(
                  // color: Colors.black26,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          highlightColor: Colors.blue.shade50,
                          child: ListTile(
                            leading: Icon(Icons.person_sharp,
                                size: 25, color: Colors.orange),
                            title: Text(
                              'Profile',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()),
                            );
                          }),
                      InkWell(
                          highlightColor: Colors.blue.shade50,
                          child: ListTile(
                            leading: Icon(Icons.directions_bike_sharp,
                                size: 25, color: Colors.orange),
                            title: Text(
                              'My Bike',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyVehicle()),
                            );
                          }),
                      InkWell(
                          highlightColor: Colors.blue.shade50,
                          child: ListTile(
                            leading: Icon(Icons.send_sharp,
                                color: Colors.orange, size: 25),
                            title: Text(
                              'My Address',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyAddress()),
                            );
                          }),
                      InkWell(
                          highlightColor: Colors.blue.shade50,
                          child: ListTile(
                            leading: Icon(Icons.menu_sharp,
                                color: Colors.orange, size: 25),
                            title: Text(
                              'Bookings',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => HoldScreen()),
                            // );
                          }),
                      InkWell(
                          highlightColor: Colors.blue.shade50,
                          child: ListTile(
                            leading: Icon(Icons.notification_important_sharp,
                                color: Colors.orange, size: 25),
                            title: Text(
                              'Notifications',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => HoldScreen()),
                            // );
                          }),
                      InkWell(
                          highlightColor: Colors.blue.shade50,
                          child: ListTile(
                            leading: Icon(Icons.help_center_sharp,
                                size: 25, color: Colors.orange),
                            title: Text(
                              'Help',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => HoldScreen()),
                            // );
                          }),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => HomePage()),
                          // );
                        },
                        highlightColor: Colors.blue.shade50,
                        child: Container(
                          child: ListTile(
                            leading: Icon(Icons.share_sharp,
                                size: 25, color: Colors.orange),
                            title: Text(
                              'Refferals',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => HomePage()),
                          // );
                        },
                        highlightColor: Colors.blue.shade50,
                        child: Container(
                          child: ListTile(
                            leading: Icon(Icons.rule_sharp,
                                size: 25, color: Colors.orange),
                            title: Text(
                              'Terms and Conditions',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AboutUs()),
                          );
                        },
                        highlightColor: Colors.blue.shade50,
                        child: Container(
                          child: ListTile(
                            leading: Icon(Icons.settings,
                                color: Colors.orange, size: 25),
                            title: Text(
                              'About us',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => HomePage()),
                          // );
                        },
                        highlightColor: Colors.blue.shade50,
                        child: Container(
                          child: ListTile(
                            leading: Icon(Icons.car_rental,
                                size: 25, color: Colors.orange),
                            title: Text(
                              'Sell vehicle',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => HomePage()),
                          // );
                        },
                        highlightColor: Colors.blue.shade50,
                        child: Container(
                          child: ListTile(
                            leading: Icon(Icons.cloud_done_sharp,
                                size: 25, color: Colors.orange),
                            title: Text(
                              'Become Partner',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => HomePage()),
                          // );
                        },
                        highlightColor: Colors.blue.shade50,
                        child: Container(
                          child: ListTile(
                            leading: Icon(Icons.subscriptions_sharp,
                                size: 25, color: Colors.orange),
                            title: Text(
                              'Subscription',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => HomePage()),
                          // );
                        },
                        highlightColor: Colors.blue.shade50,
                        child: Container(
                          child: ListTile(
                            leading: Icon(Icons.car_repair,
                                size: 25, color: Colors.orange),
                            title: Text(
                              'Vehicle Insurance',
                              style: GoogleFonts.alegreya(
                                  fontSize: 22,
                                  color: Colors.black,
                                  letterSpacing: 0),
                            ),
                          ),
                        ),
                      ),
                      _drawerLogout(),
                      SizedBox(height: size.height * 0.03),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: Container(
          child: Center(
            child: _showPage,
          ),
        ),
      ),
    );
  }
}
