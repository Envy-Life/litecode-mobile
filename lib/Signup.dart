import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liteappv1/login.dart';
import 'package:liteappv1/signuppagepainter.dart';
import 'package:page_transition/page_transition.dart';

import 'myroompage.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> with SingleTickerProviderStateMixin {
  bool obscurepw = true;
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<Offset> _animation2;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animation1 = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation2 =
        Tween(begin: Offset(0.2, 0), end: Offset.zero).animate(_controller);
    _controller.value = 0;
    _controller.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightratio = MediaQuery.of(context).size.height *
        MediaQuery.of(context).devicePixelRatio /
        2214;
    double widthratio = MediaQuery.of(context).size.width *
        MediaQuery.of(context).devicePixelRatio /
        1080;
    return Scaffold(
      body: Stack(
        children: [
          signuppainter(controller: _controller),
          FadeTransition(
            opacity: _animation1,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.40,
                    color: Colors.transparent,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Image.asset('assets/pasted image 0 (1) 2.png'),
                    Container(
                      width: 4 * widthratio,
                    ),
                    Image.asset('assets/pasted image 0 (4) 1.png')
                  ]),
                  Container(
                    height: 15 * heightratio,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Vector.png'),
                      Container(
                        width: 10 * widthratio,
                      ),
                      Text(
                        'litecode',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: Color(0xFF059FC9)),
                      ),
                    ],
                  ),
                  Container(
                    height: 30 * heightratio,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    width: MediaQuery.of(context).size.width - 60,
                    // height: 70 * heightratio,
                    child: TextFormField(
                      onChanged: (value) {
                        log(isNumeric(value).toString());
                      },
                      validator: (value) {
                        if (value!.length <= 9 || !isNumeric(value)) {
                          return 'Not a valid phone number';
                        } else {
                          return null;
                        }
                      },

                      style: TextStyle(
                        // fontFamily: 'Helvetica',
                        fontWeight: FontWeight.w400,
                        fontSize: 26,
                      ),
                      expands: false,

                      initialValue: "",
                      // scrollPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      cursorHeight: 30 * heightratio,
                      cursorColor: Color(0xFF059FC9),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 2, color: Colors.red),
                          ),
                          labelStyle: TextStyle(color: Color(0xFF059FC9)),
                          labelText: 'Phone number',
                          // labelStyle: TextStyle(color: Colors.blue[600]),
                          alignLabelWithHint: true,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          prefixIcon: Icon(
                            Icons.mail_outline_rounded,
                            color: Color(0xFF059FC9),
                          ),
                          contentPadding: EdgeInsets.fromLTRB(5, 30, 0, 10),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(width: 2, color: Color(0xFF059FC9)),
                          ),
                          focusColor: Color(0xFF059FC9),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(width: 2))),
                    ),
                  ),
                  Container(
                    height: 30 * heightratio,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                            child: navigationbar(),
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 1500),
                          ));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.resolveWith((states) =>
                            Size(MediaQuery.of(context).size.width - 100, 50)),
                        elevation:
                            MaterialStateProperty.resolveWith((states) => 0),
                        shape: MaterialStateProperty.resolveWith(
                          (states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Color(0xFF059FC9).withOpacity(0.23))),
                  ),
                  Container(
                    height: 20 * heightratio,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  bool isNumeric(String string) {
    // Null or empty string is not a number
    if (string == null || string.isEmpty) {
      return true;
    }

    // Try to parse input string to number.
    // Both integer and double work.
    // Use int.tryParse if you want to check integer only.
    // Use double.tryParse if you want to check double only.
    final number = num.tryParse(string);

    if (number == null) {
      return false;
    }

    return true;
  }
}
