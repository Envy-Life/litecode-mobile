import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'dart:math' as math;
import 'package:fraction/fraction.dart';

class myroom extends StatefulWidget {
  myroom({Key? key}) : super(key: key);

  @override
  _myroomState createState() => _myroomState();
}

class _myroomState extends State<myroom> with SingleTickerProviderStateMixin {
  List roomprofilelist = [
    {
      'name': "God",
      "year": 1,
      "college": "BITS Pilani",
      "ph_number": "+91 whatever",
      "admin": true
    },
    {
      'name': "Parthrick",
      "year": 2,
      "college": "BITS Pilani",
      "ph_number": "+91 whatever",
      "admin": false
    },
    {
      'name': "Parthrick",
      "year": 3,
      "college": "BITS Pilani",
      "ph_number": "+91 whatever",
      "admin": false
    },
    {
      'name': "Parthrick",
      "year": 4,
      "college": "BITS Pilani",
      "ph_number": "+91 whatever",
      "admin": false
    },
    {
      'name': "Parthrick",
      "year": 5,
      "college": "BITS Pilani",
      "ph_number": "+91 whatever",
      "admin": false
    },
  ];

  var pplinroom = {
    "room": {
      "usersInRoom": 1,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 7500,
      "_id": "60c436b51610e800156e3cd4",
      "users": [
        {
          "_id": "60c436e31610e800156e3cd5",
          "userID": {
            "inRoom": true,
            "roomID": "litecode2.0",
            "_id": "60c2522e42d33a3420c0197b",
            "isBanned": false,
            "email": "f20200803@pilani.bits-pilani.ac.in",
            "name": "Aayush Paurana",
            "avatar":
                "https://lh3.googleusercontent.com/a-/AOh14GhLR3ixInbu3_PCgo4FTZnOdXvPodPN7NAEbTW1=s96-c",
            "banTime": 1623347758897,
            "phoneNo": "9930486791"
          }
        }
      ],
      "roomID": "litecode2.0",
      "__v": 1,
      "roomAdmin": "60c2522e42d33a3420c0197b"
    }
  };
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<Offset> _animation2;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2500));
    _animation1 = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _animation2 = Tween<Offset>(begin: Offset(0.2, 0), end: Offset.zero)
        .animate(_controller);

    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(pplinroom['room']!['_id'] as String);

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                shadowColor: Colors.transparent,
                backgroundColor: Colors.white,
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                elevation: 7,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      'Randomname',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    background: Container(
                      child: Icon(
                        MaterialCommunityIcons.account_multiple,
                        size: 120,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: new RadialGradient(
                            colors: [
                              Theme.of(context).colorScheme.secondary,
                              Theme.of(context).colorScheme.primary
                            ],
                            stops: [
                              0.0,
                              1
                            ],
                            center: Alignment.topLeft,
                            radius: 3,
                            tileMode: TileMode.clamp),
                      ),
                    )),
              )
            ];
          },
          physics: BouncingScrollPhysics(),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularPercentIndicator(
                      backgroundColor: Colors.transparent,

                      radius: MediaQuery.of(context).size.width * 0.3,
                      animateFromLastPercent: true,
                      animation: true,
                      animationDuration: 2500,
                      startAngle: 180,
                      // arcBackgroundColor: Colors.transparent,
                      // arcType: ArcType.FULL,
                      center: Text(
                        (pplinroom['room']!['users'] as List)
                                .length
                                .toString() +
                            "/4",
                        style: TextStyle(
                            fontSize: 40,
                            fontFeatures: [FontFeature.fractions()]),
                      ),
                      // fillColor: Theme.of(context).colorScheme.secondary,
                      percent: (pplinroom['room']!['users'] as List).length / 4,
                      progressColor: Color.fromARGB(
                          int.parse((0.23 * 255).toStringAsFixed(0)),
                          52,
                          209,
                          252),
                      lineWidth: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 5, 159, 201)
                                  .withOpacity(0.1),
                              blurRadius: 10.0,
                              spreadRadius: 3.0,
                            ),
                          ]),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: AnimatedBuilder(
                            animation: _controller,
                            builder: (context, child) {
                              return RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "₹ " +
                                      (15000 -
                                              _animation1.value *
                                                  (15000 -
                                                      (pplinroom['room']![
                                                              'costPerMember']
                                                          as int)))
                                          .toStringAsFixed(0),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                    text: '\n \r \r /member',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20,
                                        color: Colors.black87))
                              ]));
                            }),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  child: Text("Members :",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Container(
                  height: 10,
                ),
                ...(pplinroom['room']!['users']! as List).map((e) {
                  log(e['_id'] as String);
                  return SlideTransition(
                    position: _animation2,
                    child: FadeTransition(
                        opacity: _animation1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 10, 5),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23)),
                            child: Stack(children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Row(
                                  children: [
                                    Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/icon_placeholder.jpg')),
                                          color: Colors.black,
                                        )),
                                    Container(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 10,
                                        ),
                                        Text(
                                          e['userID']['name'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 22),
                                        ),
                                        Container(
                                          height: 12,
                                        ),
                                        Container(
                                          height: 12,
                                        ),
                                        Text(
                                          e['userID']['phoneNo'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                height: 110,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              (pplinroom['room']!['_id'] as String) ==
                                      (e['_id'] as String)
                                  ? Positioned(
                                      top: 10,
                                      right: 20,
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 4, 5, 4),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            color: Color.fromARGB(
                                                255, 113, 128, 150)),
                                        child: Text(
                                          'Admin',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ))
                                  : Container(),
                            ]),
                          ),
                        )),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
