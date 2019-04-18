import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class SkullanimOlusturma extends StatefulWidget {
  @override
  _SkullanimOlusturmaState createState() => _SkullanimOlusturmaState();
}

class _SkullanimOlusturmaState extends State<SkullanimOlusturma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Calendar(
            isExpandable: true,
          ),
        ],
      ),
    );
  }
}