import 'package:flutter/material.dart';

class ListViewss extends StatefulWidget {
  @override
  _ListViewssState createState() => _ListViewssState();
}

class _ListViewssState extends State<ListViewss> {
  final items = List<String>.generate(1000, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return;
      },
    );
  }
}
