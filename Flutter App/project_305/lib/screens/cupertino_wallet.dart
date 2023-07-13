import 'package:flutter/cupertino.dart';

class CupertinoWallet extends StatelessWidget {
  const CupertinoWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const CupertinoPageScaffold(
      child: Center(
        child: Text("This is the Wallet Screen on iOS"),
      ),
    );
  }
}