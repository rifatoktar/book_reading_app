import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ybl/theme/constants.dart';

import 'tabs/category_tab.dart';
import 'tabs/search_tab.dart';
import 'tabs/saved_tab.dart';
import 'tabs/profile_tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    CategoryTab(),
    SearchTab(),
    SavedTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: secondaryColor,
              width: 3,
            ),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5),
              topLeft: Radius.circular(5),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: primaryColor,
              iconSize: 24,
              elevation: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/category.svg",
                    color: _selectedIndex == 0 ? iconWhite : iconBlack,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/search.svg",
                    color: _selectedIndex == 1 ? iconWhite : iconBlack,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/bookmark.svg",
                    color: _selectedIndex == 2 ? iconWhite : iconBlack,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/profile.svg",
                    color: _selectedIndex == 3 ? iconWhite : iconBlack,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
