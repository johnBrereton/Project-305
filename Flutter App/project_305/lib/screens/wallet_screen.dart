import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TRY THIS: Try changing the "return" statement below to return a
    // CupertinoPageScaffold instead of a Scaffold. Notice that the
    // CupertinoPageScaffold doesn't have a "backgroundColor" property. Instead,
    // it uses the "primaryColor" from the CupertinoTheme. Try changing the
    // "primaryColor" in the CupertinoTheme below to Colors.green and see how
    // that affects the page.
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return Center(
              child: Text(
                'This is the wallet screen',
                style: TextStyle(fontSize: 24),
              ),
            );
          case 1:
            return Center(
              child: Text(
                'This is the settings screen',
                style: TextStyle(fontSize: 24),
              ),
            );
          default:
            return Container();
        }
      },
    );
  }
}