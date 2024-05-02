import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vehicle/SizeConfig/size_config.dart';

import 'deals_tab.dart';
import 'home_tab.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: size.width,
                height: size.height,
                // color: Colors.red,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: size.width,
                      height: size.height * 0.25,
                      color: Colors.orange.shade400,
                      child: Stack(
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/world.png'),
                          ),
                          Container(
                            color: Colors.orange.shade300.withOpacity(0.2),
                            margin: EdgeInsets.symmetric(
                                vertical: 60, horizontal: 20),
                            // width: size.width * 0.453,
                            // height: size.height * 0.13,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Hello, Umair Ahmed!',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                  softWrap: true,
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  'Book your service',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 29,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.start,
                                  softWrap: true,
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 30),
                            alignment: Alignment.topRight,
                            child: new CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/uu.jpg'),
                              backgroundColor: Colors.blue.shade200,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        // width: size.width,
                        height: size.height * 0.5,
                        alignment: Alignment.bottomCenter,
                        color: Colors.red,
                        child: DefaultTabController(
                          length: 2,
                          child: Scaffold(
                            appBar: AppBar(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35)),
                              toolbarHeight: 60,
                              toolbarOpacity: 0.3,
                              backgroundColor: Colors.orange.shade100,
                              centerTitle: true,
                              bottom: PreferredSize(
                                  child: TabBar(
                                    indicator: UnderlineTabIndicator(
                                        borderSide: BorderSide(
                                            width: 2.0,
                                            color: Colors.orange.shade700),
                                        insets: EdgeInsets.symmetric(
                                            horizontal: 30)),
                                    unselectedLabelColor: Colors.grey.shade500,
                                    labelColor: Colors.orange.shade700,
                                    labelPadding: EdgeInsets.all(5),
                                    indicatorColor: Colors.red,
                                    indicatorWeight: 1,
                                    tabs: [
                                      Tab(
                                        child: Text(
                                          'Home',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          'Deals ',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                  preferredSize: Size.fromHeight(30.0)),
                            ),
                            body: TabBarView(
                              children: <Widget>[
                                Container(
                                  child: HomeTab(),
                                ),
                                Container(child: DealTab()),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
