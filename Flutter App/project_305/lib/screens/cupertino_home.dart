import 'package:flutter/cupertino.dart';

class CupertinoHome extends StatelessWidget {
  const CupertinoHome({Key? key}) : super(key: key);

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
        child: Text("This is the Home Screen on iOS"),
      ),
    );
  }
}