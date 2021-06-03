import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liteappv1/Signup.dart';
import 'package:liteappv1/loginpagepainter.dart';
import 'package:liteappv1/signuppagepainter.dart';
import 'package:page_transition/page_transition.dart';

class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage>
    with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: Stack(
        children: [
          loginpainter(controller: _controller),
          FadeTransition(
            opacity: _animation1,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.33 + 25,
                    color: Colors.transparent,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Image.asset('assets/pasted image 0 (1) 2.png'),
                    Container(
                      width: 4,
                    ),
                    Image.asset('assets/pasted image 0 (4) 1.png')
                  ]),
                  Container(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Vector.png'),
                      Container(
                        width: 10,
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
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    width: MediaQuery.of(context).size.width - 60,
                    height: 70,
                    child: TextFormField(
                        style: TextStyle(
                          // fontFamily: 'Helvetica',
                          fontWeight: FontWeight.w400,
                          fontSize: 26,
                        ),
                        expands: false,
                        initialValue: "",
                        // scrollPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        cursorHeight: 30,
                        cursorColor: Color(0xFF059FC9).withOpacity(0.23),
                        decoration: InputDecoration(
                          hintText: 'Username',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                width: 2,
                                color: Color(0xFF059FC9).withOpacity(0.23)),
                          ),
                          // labelText: 'Mail',
                          fillColor: Color(0xFF059FC9).withOpacity(0.23),
                          filled: true,
                          alignLabelWithHint: true,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          prefixIcon: Icon(
                            Icons.alternate_email,
                            size: 30,
                            color: Colors.black,
                            // color: Colors.black,
                          ),
                          // contentPadding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                          focusColor: Color(0xFF059FC9).withOpacity(0.23),
                          hoverColor: Color(0xFF059FC9).withOpacity(0.23),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                width: 2,
                                color: Color(0xFF059FC9).withOpacity(0.23)),
                          ),
                        )),
                  ),
                  Container(
                    height: 20,
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      width: MediaQuery.of(context).size.width - 60,
                      height: 70,
                      child: TextFormField(
                        style: TextStyle(
                          // fontFamily: 'Helvetica',
                          fontWeight: FontWeight.w400,
                          fontSize: 26,
                        ),
                        expands: false,

                        initialValue: "",
                        // scrollPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        cursorHeight: 30,
                        cursorColor: Color(0xFF059FC9),
                        obscureText: obscurepw,

                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Color(0xFF059FC9)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF059FC9)),
                            ),
                            labelText: 'Password',
                            alignLabelWithHint: true,
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscurepw = !obscurepw;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Icon(obscurepw
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Color(0xFF059FC9),
                            ),
                            // contentPadding: EdgeInsets.fromLTRB(10, 25, 0, 35),
                            focusColor: Color(0xFF059FC9),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2))),
                      )),
                  Container(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
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
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "New here ?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      child: signup(),
                                      type: PageTransitionType.fade,
                                      childCurrent: this.widget,
                                      reverseDuration:
                                          Duration(milliseconds: 1500),
                                      duration: Duration(milliseconds: 1500)));
                              _controller.animateBack(0);
                            },
                          text: ' Sign up',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                              fontSize: 18))
                    ]),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
