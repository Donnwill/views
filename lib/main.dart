import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'homePages/homePage.dart';
import 'provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ExecutionAreaProvider()),
      ],
      child: MaterialApp(home: MyHomePage()),
    );
  }
}
