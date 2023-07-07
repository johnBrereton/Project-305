import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TRY THIS: Try changing the "return" statement below to return a
    // CupertinoPageScaffold instead of a Scaffold. Notice that the
    // CupertinoPageScaffold doesn't have a "backgroundColor" property. Instead,
    // it uses the "primaryColor" from the CupertinoTheme. Try changing the
    // "primaryColor" in the CupertinoTheme below to Colors.green and see how
    // that affects the page.
    return const CupertinoPageScaffold(
      child: Center(
        child: Text("This is the Home Screen"),
      ),
    );
  }
}