import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../bloc/firstbloc.dart';
import '../bloc/regbloc.dart';
import 'homePage.dart';

class RegPage extends StatefulWidget {
  const RegPage({Key? key}) : super(key: key);

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  var firstController = TextEditingController();
  var lastController = TextEditingController();
  var phoneController = TextEditingController();
  var houseController = TextEditingController();
  var placeController = TextEditingController();
  var pinController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child:Column(
            children: [
            SizedBox(height: 100),
            Text(
                   'Registeration', textAlign: TextAlign.center, style: TextStyle(fontSize: 23, color: Colors.green,fontFamily: "fontStyle"),
        ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 20,
                  ),
                  Text(
                    'firstname',
                    style: TextStyle(
                        color: Colors.green, fontSize: 12, fontFamily: "fontS"),
                  ),
                ],
              ),
              Container(
                width: 290,
                height: 44,
                child: TextField(
                  controller: firstController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    // hintText: 'USERNAME',
                    //labelText: 'USERNAME',
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 20,
                  ),
                  Text(
                    'lastname',
                    style: TextStyle(
                        color: Colors.green, fontSize: 12, fontFamily: "fontS"),
                  ),
                ],
              ),
              Container(
                width: 290,
                height: 44,
                child: TextField(
                  controller: lastController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    // hintText: 'USERNAME',
                    //labelText: 'USERNAME',
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 20,
                  ),
                  Text(
                    'phone',
                    style: TextStyle(
                        color: Colors.green, fontSize: 12, fontFamily: "fontS"),
                  ),
                ],
              ),
              Container(
                width: 290,
                height: 44,
                child: TextField(
                  controller: phoneController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    // hintText: 'USERNAME',
                    //labelText: 'USERNAME',
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 20,
                  ),
                  Text(
                    'housename',
                    style: TextStyle(
                        color: Colors.green, fontSize: 12, fontFamily: "fontS"),
                  ),
                ],
              ),
              Container(
                width: 290,
                height: 44,
                child: TextField(
                  controller: houseController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    // hintText: 'USERNAME',
                    //labelText: 'USERNAME',
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 20,
                  ),
                  Text(
                    'place',
                    style: TextStyle(
                        color: Colors.green, fontSize: 12, fontFamily: "fontS"),
                  ),
                ],
              ),
              Container(
                width: 290,
                height: 44,
                child: TextField(
                  controller:placeController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    // hintText: 'USERNAME',
                    //labelText: 'USERNAME',
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 20,
                  ),
                  Text(
                    'pincode',
                    style: TextStyle(
                        color: Colors.green, fontSize: 12, fontFamily: "fontS"),
                  ),
                ],
              ),
              Container(
                width: 290,
                height: 44,
                child: TextField(
                  controller: pinController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    // hintText: 'USERNAME',
                    //labelText: 'USERNAME',
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 20,
                  ),
                  Text(
                    'password',
                    style: TextStyle(
                        color: Colors.green, fontSize: 12, fontFamily: "fontS"),
                  ),
                ],
              ),
              Container(
                width: 290,
                height: 44,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding: 4.0,
                    ),
                    // hintText: 'USERNAME',
                    //labelText: 'USERNAME',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),

              Container(
                width: 290,
                height: 44,
                child: MaterialButton(
                  onPressed: () {

                    BlocProvider.of<RegBloc>(context).add(CheckOTPs(
                        first:firstController.text,
                        last: lastController.text,
                        house: houseController.text,
                        place: placeController.text,
                        pin: pinController.text,
                        phone: phoneController.text,
                        password: passwordController.text,

                    ));
                    //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
                  },
                  color: Colors.green,
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width,
                  child: BlocConsumer<RegBloc, RegState>(
                    builder: (context, state) {
                      if (state is CheckingOtps) {
                        return Container(
                          height: 22,
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return Text(
                          "Register",
                          style: TextStyle(fontSize: 14),
                        );
                      }
                    },
                    listener: (context, state) {
                      if (state is OtpCheckeds) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomePage()));
                      } else if (state is OtpErrors) {
                        Fluttertoast.showToast(///////////////////////////////////
                          msg: state.errors,
                        );
                      }
                    },
                  ),
                ),
              ),
        ],

        ) ,
      )
      ,
    );
  }
}
