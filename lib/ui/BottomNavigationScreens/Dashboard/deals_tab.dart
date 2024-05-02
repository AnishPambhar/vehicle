import 'package:flutter/material.dart';

class DealTab extends StatefulWidget {
  @override
  _DealTabState createState() => _DealTabState();
}

class _DealTabState extends State<DealTab> {
  Widget productsCard() {
    return Container(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int i) => Card(
          color: Colors.orange.shade50,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * .8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Head'),
                Text('Content'),
                Text('Code'),
                Text('Pickup')
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Column(
        children: <Widget>[
          SizedBox(height: size.height * 0.03),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
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
            height: size.height * 0.2,
            child: Card(
              elevation: 8,
              color: Colors.orange.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Lahore',
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 3,
                              decorationStyle: TextDecorationStyle.solid,
                              wordSpacing: 5,
                              fontSize: 30,
                              fontWeight: FontWeight.w800),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                  ),
                  Container(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Flat '.toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '50% '.toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'OFF'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03)
                ],
              ),
            ),
          ),
          Container(child: productsCard())
        ],
      ),
    );
  }
}
