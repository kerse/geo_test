import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Вращающийся глобус',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GlobeScreen(),
    );
  }
}

class GlobeScreen extends StatefulWidget {
  @override
  _GlobeScreenState createState() => _GlobeScreenState();
}

class _GlobeScreenState extends State<GlobeScreen> {
  // Тут будет логика вращения глобуса

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вращающийся глобус'),
      ),
      body: Center(
        // Тут будет виджет глобуса
        child: Text('Здесь будет глобус'),
      ),
    );
  }
}
