import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle/ui/LoginScreen/login_screen.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashData();
  }
}

class SplashData extends StatefulWidget {
  @override
  _SplashDataState createState() => _SplashDataState();
}

class _SplashDataState extends State<SplashData> {
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            ));
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Theme.of(context).primaryColor,
                  // Theme.of(context).accentColor
                ])),
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                    width: 500,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                // RotationVirus(),
                Text(
                  'Lyft',
                  style: GoogleFonts.lora(
                      fontSize: 28, letterSpacing: 3, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
