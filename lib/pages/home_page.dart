import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtube_clone/pages/biblioteca_page.dart';
import 'package:youtube_clone/pages/plus_page.dart';
import 'package:youtube_clone/pages/principal_page.dart';
import 'package:youtube_clone/pages/shorts_page.dart';
import 'package:youtube_clone/pages/suscripciones_page.dart';
 

class HomePage extends StatefulWidget {
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  final _screens = [
    PrincipalPage(),
    ShortsPage(),
    PlusPage(),
    SuscriptionsPage(),
    LibraryPage() 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282828),
      
      body: Stack(
        children: _screens.asMap().map(
          (i, screen) => MapEntry(
            i, 
            Offstage(
              offstage: _selectIndex != i,
              child: screen),
            ),
            ).values.toList(),
            ),

      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 10,
        unselectedFontSize: 10,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        currentIndex: _selectIndex,
        selectedLabelStyle: TextStyle(color: Colors.white),
        onTap: (i) => setState(() => _selectIndex = i),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff282828),
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xff282828),
            activeIcon: Icon(MdiIcons.home),
            icon: Icon(MdiIcons.homeOutline),
            label: 'Principal'),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff282828),
            activeIcon: Icon(MdiIcons.timerPlay),
            icon: Icon(MdiIcons.timerPlayOutline),
            label: 'Shorts'),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff282828),
            activeIcon: Icon(MdiIcons.plusCircle),
            icon: Icon(MdiIcons.plusCircleOutline),
            label: ''),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff282828),
            activeIcon: Icon(MdiIcons.animationPlay),
            icon: Icon(MdiIcons.animationPlayOutline),
            label: 'Suscripciones'),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff282828),
            activeIcon: Icon(MdiIcons.playBox),
            icon: Icon(MdiIcons.playBoxOutline),
            label: 'Biblioteca'),
        ],
      ),
    );
  }
}