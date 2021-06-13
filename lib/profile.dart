import 'package:flutter/material.dart';

class profilepage extends StatefulWidget {
  profilepage({Key? key}) : super(key: key);

  @override
  _profilepageState createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    double heightratio = MediaQuery.of(context).size.height *
        MediaQuery.of(context).devicePixelRatio /
        2214;
    double widthratio = MediaQuery.of(context).size.width *
        MediaQuery.of(context).devicePixelRatio /
        1080;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Container(
            height: 100 * heightratio,
            width: 100 * heightratio,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black87),
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/batman-logo-silhouette-609353.ico'))),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
            child: Text(
              'varun.nyl@gmail.com',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Text(
              'Varun L',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87),
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Current Room: ',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 19)),
                  TextSpan(
                    text: 'Random name',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black87),
                  )
                ]),
              )),
          ElevatedButton(
              onPressed: null,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.red[200]),
                  elevation: MaterialStateProperty.resolveWith((states) => 0),
                  shape: MaterialStateProperty.resolveWith(
                      (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ))),
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 100,
                child: Text(
                  'logout',
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              )),
          Container(
            height: 30,
          ),
          ElevatedButton(
              onPressed: null,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                  elevation: MaterialStateProperty.resolveWith((states) => 0),
                  shape: MaterialStateProperty.resolveWith(
                      (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ))),
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 100,
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              )),
        ],
      ),
    );
  }
}
