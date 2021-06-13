import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:liteappv1/allrooms.dart';
import 'package:liteappv1/navigationprovider.dart';
import 'package:liteappv1/profile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'myroom1.dart';
import 'navbarmodel.dart';

class navigationbar extends StatefulWidget {
  navigationbar({Key? key}) : super(key: key);

  @override
  _navigationbarState createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {
  int _selectedpage = 0;
  late PageController _pageController;
  @override
  void initState() {
    Provider.of<navigationnumber>(context, listen: false).initializenavbar();
    _pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: builpageview(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedpage,
        onTap: (value) {
          _pageController.animateToPage(value,
              duration: Duration(seconds: 1), curve: Curves.easeOutCubic);
        },
        backgroundColor: Colors.white,
        labelBehavior: NavigationBarDestinationLabelBehavior.onlyShowSelected,
        elevation: 0,
        destinations: [
          NavigationBarDestination(
              icon: (MaterialCommunityIcons.account_multiple),
              unselectedIcon: MaterialCommunityIcons.account_multiple_outline,
              label: 'My Room'),
          NavigationBarDestination(icon: (Icons.search), label: 'All Rooms'),
          NavigationBarDestination(
              icon: (Icons.person_rounded),
              unselectedIcon: Icons.person_outline_rounded,
              label: 'Profile'),
          // NavigationBarDestination(
          //     icon: (Icons.access_alarm), label: 'whatever')
        ],
      ),
    );
  }

  Widget builpageview() {
    return PageView(
      physics: BouncingScrollPhysics(),
      controller: _pageController,
      children: [myroom(), allrooms(), profilepage()],
      onPageChanged: (index) {
        setState(() {
          _selectedpage = index;
        });
      },
    );
  }
}
