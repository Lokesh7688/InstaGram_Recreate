import 'package:flutter/material.dart';

class bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Image.network(
            '',
            height: 9.0,
            width: 100.0,
          ),
        ),
      ),
    );
  }
}
