import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class allrooms extends StatefulWidget {
  allrooms({Key? key}) : super(key: key);

  @override
  _allroomsState createState() => _allroomsState();
}

class _allroomsState extends State<allrooms>
    with SingleTickerProviderStateMixin {
  late TextEditingController searchcontroller;
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<Offset> _animation2;

  @override
  void initState() {
    searchcontroller = TextEditingController();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _animation1 = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _animation2 = Tween<Offset>(begin: Offset(0.2, 0), end: Offset.zero)
        .animate(_controller);
    _controller.forward();
    super.initState();
  }

  List group_list = [
    {
      "name": "random1",
      "members": 2,
      "money": 2500,
      "private": false,
      "reserved": 1,
      "people": [
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
      ]
    },
    {
      "name": "random2",
      "members": 3,
      "money": 2500,
      "private": false,
      "reserved": 0,
      "people": [
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
      ]
    },
    {
      "name": "random3",
      "members": 1,
      "money": 2500,
      "private": false,
      "reserved": 2,
      "people": [
        {
          'name': "God",
          "year": 1,
          "college": "BITS Pilani",
          "ph_number": "+91 whatever",
          "admin": true
        },
      ]
    },
    {
      "name": "random4",
      "members": 4,
      "money": 2500,
      "private": true,
      "reserved": 0,
      "people": [
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
      ]
    },
    {
      "name": "random5",
      "members": 2,
      "money": 2500,
      "private": true,
      "reserved": 1,
      "people": [
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
      ]
    },
    {
      "name": "random6",
      "members": 1,
      "money": 2500,
      "private": false,
      "reserved": 0,
      "people": [
        {
          'name': "God",
          "year": 1,
          "college": "BITS Pilani",
          "ph_number": "+91 whatever",
          "admin": true
        },
      ]
    },
    {
      "name": "random6",
      "members": 1,
      "money": 2500,
      "private": false,
      "reserved": 0,
      "people": [
        {
          'name': "God",
          "year": 1,
          "college": "BITS Pilani",
          "ph_number": "+91 whatever",
          "admin": true
        },
      ]
    }
  ];

  var group_list2 = [
    {
      "usersInRoom": 1,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 7500,
      "_id": "60ba4ea69af322450446f32f",
      "users": [
        {
          "_id": "60ba4ec19af322450446f332",
          "userID": {
            "inRoom": true,
            "roomID": "acm",
            "avatar":
                "https://lh3.googleusercontent.com/a-/AOh14GhLR3ixInbu3_PCgo4FTZnOdXvPodPN7NAEbTW1=s96-c",
            "_id": "60ba11b29b84351714974d30",
            "email": "f20200803@pilani.bits-pilani.ac.in",
            "name": "Aayush Paurana"
          }
        }
      ],
      "roomID": "acm",
      "__v": 1,
      "roomAdmin": "60ba11b29b84351714974d30"
    },
    {
      "usersInRoom": 0,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 15000,
      "_id": "60ba11fb9b84351714974d32",
      "users": [],
      "roomID": "6381a8",
      "__v": 0
    },
    {
      "usersInRoom": 0,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 15000,
      "_id": "60ba12009b84351714974d33",
      "users": [],
      "roomID": "e3b41e",
      "__v": 0
    },
    {
      "usersInRoom": 0,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 15000,
      "_id": "60ba3d609469fd06a8bf5363",
      "users": [],
      "roomID": "200629",
      "__v": 0
    },
    {
      "usersInRoom": 0,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 15000,
      "_id": "60ba3d739469fd06a8bf5364",
      "users": [],
      "roomID": "ddb2c4",
      "__v": 0
    },
    {
      "usersInRoom": 0,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 15000,
      "_id": "60ba3d820cd05940942de347",
      "users": [],
      "roomID": "5298e8",
      "__v": 0
    },
    {
      "usersInRoom": 0,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 15000,
      "_id": "60ba3dab1a8f4c46a872bd15",
      "users": [],
      "roomID": "179032",
      "__v": 0
    },
    {
      "usersInRoom": 0,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 15000,
      "_id": "60ba3e5cb9de6d32b8c3a046",
      "users": [],
      "roomID": "randomName123",
      "__v": 0
    },
    {
      "usersInRoom": 0,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 15000,
      "_id": "60ba3e67b9de6d32b8c3a047",
      "users": [],
      "roomID": "5e6ee9",
      "__v": 0
    },
    {
      "usersInRoom": 0,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 15000,
      "_id": "60ba4eac9af322450446f330",
      "users": [],
      "roomID": "acm2",
      "__v": 0
    },
    {
      "usersInRoom": 0,
      "roomFull": false,
      "roomLocked": false,
      "costPerMember": 15000,
      "toPay": 15000,
      "_id": "60ba4eb49af322450446f331",
      "users": [],
      "roomID": "litecode",
      "__v": 0
    }
  ];

  late List group_list1 = [0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(height: 50),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: TextFormField(
                onChanged: (word) {
                  group_list1 = [];
                  for (var item in group_list2) {
                    var name1 = item['roomID']!.toString().toLowerCase();
                    // var whatever = name1.toLowerCase();

                    if (name1.contains(word.toLowerCase())) {
                      group_list1.add(item);
                    }
                    setState(() {});
                  }
                },
                controller: searchcontroller,
                cursorColor: Color.fromARGB(
                    int.parse((0.23 * 255).toStringAsFixed(0)), 52, 209, 252),
                cursorHeight: 25,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    hintStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    contentPadding: EdgeInsets.fromLTRB(15, 20, 0, 20),
                    hintText: 'Looking for a friend’s group?',
                    focusColor: Color.fromARGB(
                        int.parse((0.23 * 255).toStringAsFixed(0)),
                        52,
                        209,
                        252),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(
                                int.parse((0.23 * 255).toStringAsFixed(0)),
                                52,
                                209,
                                252))),
                    icon: Icon(Icons.search,
                        color: Color.fromARGB(
                            int.parse((1 * 255).toStringAsFixed(0)),
                            52,
                            209,
                            252)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFFEDF2F7)))),
              ),
            ),
            Container(
              height: 20,
            ),
            group_list1.length != 0
                ? Column(
                    children: [
                      ...(group_list1.elementAt(0) == 0
                              ? group_list2
                              : group_list1)
                          .map((e) => SlideTransition(
                                position: _animation2,
                                child: FadeTransition(
                                  opacity: _animation1,
                                  child: GestureDetector(
                                    onTap: () async {
                                      await showGeneralDialog(
                                        context: context,
                                        barrierDismissible: true,
                                        barrierLabel: 'hi',
                                        transitionDuration:
                                            Duration(milliseconds: 500),
                                        transitionBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return FadeTransition(
                                              opacity: animation,
                                              child: Dialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                elevation: 10,
                                                child: Container(
                                                  // height: 200,
                                                  width: double.infinity,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                20, 20, 10, 10),
                                                        child: Text(
                                                          e['roomID'],
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black87,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize: 30,
                                                          ),
                                                        ),
                                                      ),
                                                      ...e['users']
                                                          .map(
                                                              (item) => Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            10,
                                                                            0,
                                                                            5,
                                                                            10),
                                                                    child: Card(
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(20)),
                                                                      child:
                                                                          Container(
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Color(0xFFF7FAFC),
                                                                            borderRadius: BorderRadius.circular(20)),
                                                                        height:
                                                                            80,
                                                                        padding: EdgeInsets.fromLTRB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Container(
                                                                              height: 60,
                                                                              width: 60,
                                                                              decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(100),
                                                                                  image: DecorationImage(
                                                                                    image: NetworkImage(item['userID']['avatar']),
                                                                                  ),
                                                                                  color: Color(0xFFF7FAFC)),
                                                                            ),
                                                                            Container(
                                                                              width: 20,
                                                                            ),
                                                                            RichText(
                                                                                text: TextSpan(children: [
                                                                              TextSpan(
                                                                                text: item['userID']['name'] + "\n",
                                                                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 22),
                                                                              ),
                                                                              TextSpan(text: subtitletext(item), style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18))
                                                                            ]))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  )),
                                                      Container(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                20, 0, 0, 0),
                                                        child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        'You pay \n \r',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            160,
                                                                            174,
                                                                            192),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        fontSize:
                                                                            25)),
                                                                TextSpan(
                                                                    text: "₹ " +
                                                                        e['toPay']
                                                                            .toString(),
                                                                    style: TextStyle(
                                                                        color: Color.fromRGBO(
                                                                            113,
                                                                            128,
                                                                            150,
                                                                            1),
                                                                        fontSize:
                                                                            30,
                                                                        fontWeight:
                                                                            FontWeight.w800))
                                                              ]),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 15, 0, 20),
                                                        child: ElevatedButton(
                                                          child: Text(
                                                            e['users'].length ==
                                                                    4
                                                                ? 'Group full'
                                                                : 'Join group',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          style: ButtonStyle(
                                                              padding: MaterialStateProperty.resolveWith(
                                                                  (states) =>
                                                                      EdgeInsets.fromLTRB(
                                                                          10,
                                                                          10,
                                                                          10,
                                                                          10)),
                                                              shape: MaterialStateProperty.resolveWith(
                                                                  (states) => RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10))),
                                                              backgroundColor:
                                                                  MaterialStateProperty
                                                                      .resolveWith(
                                                                          (states) {
                                                                if (e['users']
                                                                        .length ==
                                                                    4) {
                                                                  return Colors
                                                                      .red;
                                                                } else {
                                                                  return Color
                                                                      .fromRGBO(
                                                                          5,
                                                                          159,
                                                                          201,
                                                                          1);
                                                                }
                                                              })),
                                                          onPressed: () {},
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ));
                                        },
                                        pageBuilder: (context, animation,
                                            secondaryAnimation) {
                                          return Container();
                                        },
                                      );
                                    },
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 10, 10, 0),
                                      child: Card(
                                        elevation: 10,
                                        child: Container(
                                          height: 200,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          color: Color(0xFFF7FAFC),
                                          child: (Column(
                                            children: [
                                              e['users'].length != 0
                                                  ? Container(
                                                      height: 80,
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      width: double.infinity,
                                                      // color: Colors.black,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                30, 10, 0, 10),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: StackedWidgets(
                                                            items: [
                                                              ...e['users']
                                                                  .map((item1) {
                                                                return buildImage(
                                                                    item1['userID']
                                                                        [
                                                                        'avatar']);
                                                              })
                                                            ],
                                                            direction:
                                                                TextDirection
                                                                    .ltr,
                                                            xShift: 20,
                                                            size: 60,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  : Container(
                                                      height: 80,
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      width: double.infinity,
                                                    ),
                                              Divider(
                                                endIndent: 20,
                                                color: Colors.black45,
                                                indent: 20,
                                                thickness: 3,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 10, 10, 0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      e["roomID"],
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 22,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 10, 30, 0),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                            TextSpan(
                                                                text:
                                                                    'To pay \n \r \r',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    fontSize:
                                                                        17,
                                                                    color: Colors
                                                                        .black87)),
                                                            TextSpan(
                                                              text: "₹ " +
                                                                  e['toPay']
                                                                      .toString(),
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  fontSize: 24,
                                                                  color: Colors
                                                                      .black),
                                                            )
                                                          ])),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          )),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  String subtitletext(e) {
    if (e['year'] == 1) {
      return "1st Year, " + e['college'];
    } else if (e['year'] == 2) {
      return "2nd Year, " + e['college'];
    } else if (e['year'] == 3) {
      return "3rd Year, " + e['college'];
    } else if (e['year'] == 4) {
      return "4th Year, " + e['college'];
    } else if (e['year'] == 5) {
      return "5th Year, " + e['college'];
    }
    return 'error';
  }

  Widget buildImage(String urlImage) {
    final double borderSize = 0;

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(200),
      child: Container(
        padding: EdgeInsets.all(borderSize),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            color: Colors.white,
            border: Border.all(
                color: Theme.of(context).colorScheme.secondary, width: 4)),
        child: ClipOval(
          child: Image.network(
            urlImage,
            scale: 10,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class StackedWidgets extends StatelessWidget {
  final List<Widget> items;
  final TextDirection direction;
  final double size;
  final double xShift;

  const StackedWidgets({
    Key? key,
    required this.items,
    this.direction = TextDirection.ltr,
    this.size = 100,
    this.xShift = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allItems = items
        .asMap()
        .map((index, item) {
          final left = size - xShift;

          final value = Container(
            width: size,
            height: size,
            child: item,
            margin: EdgeInsets.only(left: left * index),
          );

          return MapEntry(index, value);
        })
        .values
        .toList();

    return Stack(
      children: direction == TextDirection.ltr
          ? allItems.reversed.toList()
          : allItems,
    );
  }
}
