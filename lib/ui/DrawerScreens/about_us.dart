import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:ride_booking/models/about_us_model.dart';

void main() => runApp(AboutUs());

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.green),
            ),
            Text(
              'Go Back',
              style: GoogleFonts.alegreya(
                  fontSize: 22,
                  color: Colors.green,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                margin: EdgeInsets.all(40.0),
                child: Column(children: [
                  _backButton(),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Lorem Ipsum is simply dummy text "
                              "of the printing and typesetting industry. Lorem Ipsum has been the "
                              "industry's standard dummy text ever since the 1500s, when an unknown "
                              "printer took a galley of type and scrambled it to make a type specimen book. "
                              "It has survived not only five centuries, but also the leap into electronic "
                              "typesetting, remaining essentially unchanged. It was popularised in the 1960s "
                              "with the release of Letraset sheets containing Lorem Ipsum passages, and more "
                              "recently with desktop publishing software like Aldus PageMaker including "
                              "versions of Lorem Ipsum.\n\n",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        TextSpan(
                          text: "Lorem Ipsum is simply dummy text "
                              "of the printing and typesetting industry. Lorem Ipsum has been the "
                              "industry's standard dummy text ever since the 1500s, when an unknown "
                              "printer took a galley of type and scrambled it to make a type specimen book. "
                              "It has survived not only five centuries, but also the leap into electronic "
                              "typesetting, remaining essentially unchanged. It was popularised in the 1960s "
                              "with the release of Letraset sheets containing Lorem Ipsum passages, and more "
                              "recently with desktop publishing software like Aldus PageMaker including "
                              "versions of Lorem Ipsum.",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
