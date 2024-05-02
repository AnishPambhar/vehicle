import 'package:flutter/material.dart';

class AddCar extends StatefulWidget {
  @override
  _AddCarState createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {

  Widget _vehicleRegistrationField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: new TextFormField(
        keyboardType: TextInputType.text,
        validator: (value) {
          if (value!.isEmpty) {
            return "Please enter your registration number";
          }
          return null;
        },
        decoration: new InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: new BorderSide(color: Colors.orange),
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.orange, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          focusedBorder: const OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.orange, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          filled: true,
          fillColor: Colors.grey.shade100,
          labelText: 'Vehicle Registration number',
          labelStyle: TextStyle(color: Colors.black45),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Container(
              width: size.width * 0.77,
              height: size.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
              ),
              child: ElevatedButton(
                // splashColor: Colors.yellowAccent,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: Colors.orange),
                  ),
                  backgroundColor: Colors.orange.shade300,
                ),
                onPressed: () {
                  setState(() {
                    // Your onPressed logic here
                  });
                },
                child: Text(
                  'Choose Brand',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
              ),

            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width * 0.77,
              height: size.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
              ),
              child: ElevatedButton(
                // splashColor: Colors.yellowAccent,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: Colors.orange),
                  ),
                  backgroundColor: Colors.orange.shade300,
                ),
                onPressed: () {
                  setState(() {
                    // Your onPressed logic here
                  });
                },
                child: Text(
                  'Choose Model',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
              ),

            ),
            SizedBox(height: size.height * 0.03),
            Container(
              height: size.height * 0.2,
              width: size.width,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.01),
                  Text(
                    'Choose Fuel Type',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 8,
                    // runSpacing: 20,
                    children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => MyBike()));
                          },
                          child: Container(
                            width: size.width * 0.2,
                            height: size.height * 0.1,
                            // padding: EdgeInsets.symmetric(
                            //     vertical: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade400,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'Petrol',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => MyBike()));
                          },
                          child: Container(
                            width: size.width * 0.2,
                            height: size.height * 0.1,
                            // padding: EdgeInsets.symmetric(
                            //     vertical: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade400,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'Diesel',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => MyBike()));
                          },
                          child: Container(
                            width: size.width * 0.2,
                            height: size.height * 0.1,
                            // padding: EdgeInsets.symmetric(
                            //     vertical: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade400,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'Electric',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => MyBike()));
                          },
                          child: Container(
                            width: size.width * 0.2,
                            height: size.height * 0.1,
                            // padding: EdgeInsets.symmetric(
                            //     vertical: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade400,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'CNG',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.01),
            _vehicleRegistrationField(),
            SizedBox(height: size.height * 0.07),
            Container(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => MyBike()));
                },
                child: Container(
                  width: size.width * 0.5,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade300,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
