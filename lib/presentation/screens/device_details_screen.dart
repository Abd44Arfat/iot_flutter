import 'package:flutter/material.dart';

class DetailsDevice extends StatelessWidget {
  final String name;
  final String imageUrl;
  final bool switchStatus;

  DetailsDevice({required this.name, required this.imageUrl, required this.switchStatus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Device'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Device: $name'),
            Image.asset(imageUrl),
            Text('Switch Status: ${switchStatus ? 'On' : 'Off'}'),
          ],
        ),
      ),
    );
  }
}