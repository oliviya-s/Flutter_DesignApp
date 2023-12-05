import 'package:designapp/bloc/regbloc.dart';
import 'package:designapp/ui/regstration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../bloc/firstbloc.dart';
import 'secPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var phoneController = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: ExactAssetImage('assets/kingfisher.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                'PARAMBIKULAM',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,fontFamily: "fontStyle"
                ),
              ),
              SizedBox(height: 5),
              Text(
                'TIGER RESERVE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 350),
              Text(
                'Please login to Continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontFamily: "fontStyle"),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 20,
                  ),
                  Text(
                    'username',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.white, fontSize: 9, fontFamily: "fontS"),
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
                    suffixIcon: Image.asset("assets/tick.png"),
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
                        color: Colors.white, fontSize: 9, fontFamily: "fontS"),
                  ),
                ],
              ),
              Container(
                width: 290,
                height: 44,
                child: TextField(
                  controller: passwordcontroller,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    suffixIcon: Image.asset("assets/eye.png"),
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
                    width: 250,
                    height: 20,
                  ),
                  Text(
                    'forgot password ?',
                    style: TextStyle(
                        color: Colors.white, fontSize: 9, fontFamily: "fontS"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 290,
                height: 44,
                child: MaterialButton(
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context).add(CheckOTP(
                        phone: phoneController.text,
                        otpNumber: passwordcontroller.text));
                    //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
                  },
                  color: Colors.green,
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width,
                  child: BlocConsumer<AuthBloc, AuthState>(
                    builder: (context, state) {
                      if (state is CheckingOtps) {
                        return Container(
                          height: 22,
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return Text(
                          "Log in",
                          style: TextStyle(fontSize: 14),
                        );
                      }
                    },
                    listener: (context, state) {
                      if (state is OtpChecked) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SecPage()));
                      } else if (state is OtpError) {
                        Fluttertoast.showToast(///////////////////////////////////
                          msg: state.error,
                        );
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(

                  child: MaterialButton(color: Colors.green,minWidth:MediaQuery.of(context).size.height*.36,onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegPage()));
                  },
                    child: Text("Register",),
                  ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
