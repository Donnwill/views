import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:practice_app/emoji/dashboardpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoardPage(),
    );
  }
}
