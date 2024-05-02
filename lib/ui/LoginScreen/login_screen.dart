import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:vehicle/ui/LoginScreen/otp_verification.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => OtpVerification()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.green.shade300,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Text(
          'Login',
          style: GoogleFonts.alegreya(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _phoneField() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: InternationalPhoneNumberInput(
        spaceBetweenSelectorAndTextField: 1,
        onInputChanged: (PhoneNumber number) {
          print(number.phoneNumber);
        },
        onInputValidated: (bool value) {
          print(value);
        },
        selectorConfig: SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        ),
        ignoreBlank: false,
        autoValidateMode: AutovalidateMode.disabled,
        selectorTextStyle: TextStyle(color: Colors.black),
        initialValue: number,
        textFieldController: controller,
        formatInput: false,
        keyboardType:
        TextInputType.numberWithOptions(signed: true, decimal: true),
        inputBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        onSaved: (PhoneNumber number) {
          print('On Saved: $number');
        },
      ),
    );
  }


  Widget _loginHead() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: <Widget>[
          Text(
            'Sign In',
            style: GoogleFonts.alegreya(
                fontSize: 28, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          Text(
            'Welcome back!',
            style: GoogleFonts.alegreya(
                fontSize: 21, color: Colors.black, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  Widget _googleButton() {
    return InkWell(
      onTap: () {
        return null;
      },
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width * 0.8,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: HexColor('#DB4437'),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Text(
          'Login with Google',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  Widget _facebookButton() {
    return InkWell(
      onTap: () {
        return null;
      },
      child: Container(
        // color: HexColor('#4267B2'),
        width: MediaQuery
            .of(context)
            .size
            .width * 0.8,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: HexColor('#4267B2'),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Text(
          'Login with Facebook',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'PAK';
  PhoneNumber number = PhoneNumber(isoCode: 'PK');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 70),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _loginHead(),
                  SizedBox(height: size.height * 0.07),
                  _phoneField(),
                  SizedBox(height: size.height * 0.05),
                  _submitButton(),
                  Container(
                    width: size.width * 0.8,
                    height: size.height * 0.4,
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _googleButton(),
                        SizedBox(height: size.height * 0.02),
                        _facebookButton()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'PK');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
 }
