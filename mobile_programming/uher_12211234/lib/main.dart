import 'package:flutter/material.dart';
import 'form_biodata.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BiodataForm(),
    );
  }
}
