import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_305/screens/cupertino_home.dart';
import 'package:project_305/screens/cupertino_wallet.dart';
import 'package:project_305/screens/cupertino_account.dart';
import 'package:project_305/screens/material_home.dart';
import 'package:project_305/screens/material_wallet.dart';

/* 
  Universal app detects platform (iOS or Android) and displays the appropriate UI
 */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Limit orientation to portrait
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    if (Platform.isIOS) {
      return const CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light , primaryColor:  Color(0xFF6C48FF)),
        home: CupertinoNavbar(),
        debugShowCheckedModeBanner: false,
      );
    }
    else {
      return MaterialApp(
        theme: ThemeData(
          primaryColor: const Color(0xFF6C48FF),
          useMaterial3: true,
        ),
        home: MaterialNavbar(),
        debugShowCheckedModeBanner: false,
      );
    }
  }
}

class CupertinoNavbar extends StatelessWidget {
  const CupertinoNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.creditcard),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt_circle),
            label: 'Account',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return switch (index) {
          0 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: CupertinoHome(),
              ),
            ),
          1 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: CupertinoWallet(),
              ),
            ),
          2 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: CupertinoAccount(),
              ),
            ),
          _ => throw Exception('Invalid index $index'),
        };
      },
    );
  }
}

class MaterialNavbar extends StatefulWidget {
  const MaterialNavbar({super.key});

  State <MaterialNavbar> createState() => _MaterialNavbarState();
}

class _MaterialNavbarState extends State<MaterialNavbar> {
  int currentIndex = 0;

  static const List<Widget> _pages = [
    MaterialHome(),
    MaterialWallet(),
    CupertinoAccount(),
  ];

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFFF0EDFF), // Set the color of the system bar here
    ));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: const Color(0xFFF0EDFF),
        indicatorColor: const Color(0xFF6C48FF),
        selectedIndex: currentIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.credit_card),
            label: 'Wallet',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}