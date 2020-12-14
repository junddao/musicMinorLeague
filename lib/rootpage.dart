import 'package:music_minorleague/model/view/page/tab_page.dart';
import 'package:flutter/material.dart';
import 'package:music_minorleague/route.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabPage(),
    );
  }
}
