import 'package:flutter/material.dart';
import 'package:ui_course/_partials/constant.dart';
import 'package:ui_course/view/Pages/Home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          // canvasColor: Colors.green,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Colors.red,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: primaryColor),
              ),
          primaryTextTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: primaryColor),
              ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/BottomBar/Navbar_Home.png')),
              label: 'BottomBar',
              activeIcon: ImageIcon(
                  AssetImage('assets/BottomBar/Navbar_Home_active.png')),
            ),
            BottomNavigationBarItem(
              icon:
                  ImageIcon(AssetImage('assets/BottomBar/Navbar_Kelasku.png')),
              label: 'Kelasku',
              activeIcon: ImageIcon(
                  AssetImage('assets/BottomBar/Navbar_Kelasku_active.png')),
            ),
            BottomNavigationBarItem(
              icon:
                  ImageIcon(AssetImage('assets/BottomBar/Navbar_Progres.png')),
              label: 'Progress',
              activeIcon: ImageIcon(
                  AssetImage('assets/BottomBar/Navbar_Progres_active.png')),
            ),
            BottomNavigationBarItem(
              icon:
                  ImageIcon(AssetImage('assets/BottomBar/Navbar_Favorit.png')),
              label: 'Favorit',
              activeIcon: ImageIcon(
                  AssetImage('assets/BottomBar/Navbar_Favorit_active.png')),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/BottomBar/Navbar_Profil.png')),
              label: 'Profile',
              activeIcon: ImageIcon(
                  AssetImage('assets/BottomBar/Navbar_Profil_active.png')),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: primaryColor,
          onTap: _onItemTapped,
          unselectedItemColor: primaryColor,
        ),
      ),
    );
  }
}
