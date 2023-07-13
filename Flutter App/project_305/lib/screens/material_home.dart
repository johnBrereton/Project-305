import 'package:flutter/material.dart';

class MaterialHome extends StatelessWidget {
  const MaterialHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: Center(
        child: Text("This is the Home Screen on Android"),
      ),
    );
  }
}