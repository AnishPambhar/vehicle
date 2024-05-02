import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:google_fonts/google_fonts.dart';


import '../HomeScreen/home_screen.dart';


class OtpVerification extends StatefulWidget {
  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text(
              'Back',
              style: GoogleFonts.alegreya(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }

  Widget _otpHead() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: <Widget>[
          Text(
            'Verify your number with\nthe codes sent to you',
            textAlign: TextAlign.center,
            style: GoogleFonts.alegreya(
                fontSize: 27, color: Colors.blue, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.green),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  Widget _otpResend() {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "I didn't receive the code. ",
              style: GoogleFonts.alegreya(fontSize: 18, color: Colors.black),
            ),
            Text(
              'Resend',
              style: GoogleFonts.alegreya(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }

  Widget _proceedButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: HexColor('#4267B2'),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          'Proceed',
          style: TextStyle(color: Colors.white, fontSize: 21),
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
          child: Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                _backButton(),
                _otpHead(),
                Container(
                  // margin: const EdgeInsets.symmetric(vertical: 5),
                  // color: Colors.green,
                  //   width: size.width,
                  //   height: size.height * 0.3,
                    child: Builder(
                      builder: (context) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SingleChildScrollView(
                              child: Container(
                                margin: const EdgeInsets.all(20.0),
                                padding: const EdgeInsets.all(20.0),
                                // child: PinPut(
                                //   fieldsCount: 5,
                                //   // onSubmit: (String pin) => _showSnackBar(pin, context),
                                //   focusNode: _pinPutFocusNode,
                                //   controller: _pinPutController,
                                //   submittedFieldDecoration:
                                //       _pinPutDecoration.copyWith(
                                //     borderRadius: BorderRadius.circular(20.0),
                                //   ),
                                //   selectedFieldDecoration: _pinPutDecoration,
                                //   followingFieldDecoration:
                                //       _pinPutDecoration.copyWith(
                                //     borderRadius: BorderRadius.circular(5.0),
                                //     border: Border.all(
                                //       color: Colors.deepPurpleAccent
                                //           .withOpacity(.5),
                                //     ),
                                //   ),
                                // ),
                                // width: size.width,
                                // height: size.height * 0.2,
                              ),
                            ),
                            // const SizedBox(height: 30.0),
                            // const Divider(),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   children: <Widget>[
                            //     FlatButton(
                            //       onPressed: () => _pinPutFocusNode.requestFocus(),
                            //       child: const Text('Focus'),
                            //     ),
                            //     FlatButton(
                            //       onPressed: () => _pinPutFocusNode.unfocus(),
                            //       child: const Text('Unfocus'),
                            //     ),
                            //     FlatButton(
                            //       onPressed: () => _pinPutController.text = '',
                            //       child: const Text('Clear All'),
                            //     ),
                            //   ],
                            // ),
                          ],
                        );
                      },
                    ),
                ),
                _otpResend(),
                SizedBox(height: size.height * 0.08),
                _proceedButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
