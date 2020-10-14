import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  String title;

  SectionTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
      ),
    );
  }
}
