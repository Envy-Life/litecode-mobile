import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:liteappv1/Signup.dart';
import 'package:liteappv1/backendmanager.dart';
import 'package:liteappv1/landingpainter.dart';
import 'package:liteappv1/login.dart';
import 'package:page_transition/page_transition.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({Key? key}) : super(key: key);

  @override
  _LandingpageState createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<Offset> _animation2;

  late GoogleSignIn _googleSignIn;

  @override
  void initState() {
    _googleSignIn = GoogleSignIn();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animation1 = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation2 =
        Tween(begin: Offset(0.2, 0), end: Offset.zero).animate(_controller);

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

    print(MediaQuery.of(context).size.height *
        MediaQuery.of(context).devicePixelRatio);

    return Scaffold(
      body: Stack(
        children: [
          // landingpainter(
          //   controller: _controller,
          // ),
          FadeTransition(
            opacity: _animation1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 75 * heightratio, 0, 0),
                  child: SvgPicture.asset(
                    'assets/Pair programming-amico 1.svg',
                    height: MediaQuery.of(context).size.height * 0.45,
                  ),
                ),
                Container(
                  height: 40 * heightratio,
                ),
                Text(
                  'Share Leetcode \npremium accounts.',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                ),
                Container(
                  height: 10 * heightratio,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 46, 0),
                  child: Text(
                    'Discover people willing to split the cost for \nLeetCode Premium accounts with you.',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  height: 70,
                ),
                SlideTransition(
                  position: _animation2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: ElevatedButton(
                      onPressed: () async {
                        await Provider.of<backendmanager>(context,
                                listen: false)
                            .googlelogin();

                        _controller.animateBack(0);
                        await Future.delayed(Duration(milliseconds: 1500));
                        print(MediaQuery.of(context).size.toString());
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: signup(),
                                type: PageTransitionType.fade,
                                childCurrent: this.widget,
                                reverseDuration: Duration(milliseconds: 1500),
                                duration: Duration(milliseconds: 1500)));
                        _controller.dispose();
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.resolveWith(
                              (states) => Size(
                                  MediaQuery.of(context).size.width -
                                      (40 * widthratio),
                                  60 * heightratio)),
                          shape: MaterialStateProperty.resolveWith((states) =>
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(23))),
                          elevation:
                              MaterialStateProperty.resolveWith((states) => 0),
                          alignment: Alignment.center,
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) =>
                                  Theme.of(context).colorScheme.secondary)),
                    ),
                  ),
                ),
                Container(
                  height: 15 * heightratio,
                ),
                // SlideTransition(
                //   position: _animation2,
                //   child: Padding(
                //     padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                //     child: ElevatedButton(
                //       onPressed: () async {
                //         _controller.animateBack(0);
                //         await Future.delayed(Duration(milliseconds: 1500));
                //         Navigator.pushReplacement(
                //             context,
                //             PageTransition(
                //                 child: loginpage(),
                //                 type: PageTransitionType.fade,
                //                 childCurrent: this.widget,
                //                 reverseDuration: Duration(milliseconds: 1500),
                //                 duration: Duration(milliseconds: 1500)));
                //       },
                //       child: Text(
                //         "Login",
                //         style: TextStyle(
                //             color: Colors.black, fontWeight: FontWeight.w700),
                //       ),
                //       style: ButtonStyle(
                //           fixedSize: MaterialStateProperty.resolveWith(
                //               (states) => Size(
                //                   MediaQuery.of(context).size.width -
                //                       (40 * widthratio),
                //                   60 * heightratio)),
                //           shape: MaterialStateProperty.resolveWith((states) =>
                //               RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(23))),
                //           elevation:
                //               MaterialStateProperty.resolveWith((states) => 0),
                //           alignment: Alignment.center,
                //           backgroundColor: MaterialStateProperty.resolveWith(
                //               (states) => Theme.of(context).primaryColor)),
                //     ),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
