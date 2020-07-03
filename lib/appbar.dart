import 'package:flutter/material.dart';

class bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Image.network(
            'https://www.brandinglosangeles.com/wp-content/uploads/Instagram_logo.svg.png',
            height: 99.0,
            width: 100.0,
          ),
        ),
      ),
    );
  }
}
