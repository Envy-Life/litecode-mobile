import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:liteappv1/Landingpage.dart';
import 'package:liteappv1/backendmanager.dart';
import 'package:liteappv1/myroompage.dart';
import 'package:liteappv1/waveloader.dart/wave.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class splashscreen extends StatefulWidget {
  splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  bool animationcompleted = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<backendmanager>(context).initapp();
    void whatever() async {
      await Future.delayed(Duration(seconds: 2));

      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Landingpage(),
      ));
      // Navigator.pushReplacement(
      //     context,
      //     PageTransition(
      //       child: Landingpage(),
      //       type: PageTransitionType.fade,
      //       duration: Duration(seconds: 2),
      //       childCurrent: this.widget,
      //     ));
    }

    if (animationcompleted) {
      whatever();
    }

    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            // left: MediaQuery.of(context).size.width / 2,
            // right: MediaQuery.of(context).size.width / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Vector.png'),
                Container(
                  width: 10,
                ),
                DefaultTextStyle(
                  style: TextStyle(
                      color: Color(0xFF059FC9),
                      fontFamily: 'Roboto',
                      fontSize: 35,
                      fontWeight: FontWeight.w800),
                  child: AnimatedTextKit(
                    onFinished: () {
                      animationcompleted = true;
                      setState(() {});
                    },
                    isRepeatingAnimation: false,
                    displayFullTextOnTap: true,
                    totalRepeatCount: 200,
                    animatedTexts: [
                      TypewriterAnimatedText('litecode',
                          speed: Duration(milliseconds: 500)),
                    ],
                  ),
                )
              ],
            ),
          ),
          animationcompleted
              ? Positioned(
                  top: MediaQuery.of(context).size.height * 0.6,
                  child: SpinKitWave(
                    color: Color(0xFF059FC9).withOpacity(0.6),
                    itemCount: 5,
                    size: 40,
                  ),
                )
              : Container()
        ]),
      ),
    );
  }
}
