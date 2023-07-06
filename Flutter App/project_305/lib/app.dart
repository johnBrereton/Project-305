import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:project_305/screens/home_screen.dart';
import 'package:project_305/screens/wallet_screen.dart';
import 'package:project_305/screens/account_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Limit orientation to portrait
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoNavbar(),
    );
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
                child: HomeScreen(),
              ),
            ),
          1 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: WalletScreen(),
              ),
            ),
          2 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: AccountScreen(),
              ),
            ),
          _ => throw Exception('Invalid index $index'),
        };
      },
    );
  }
}