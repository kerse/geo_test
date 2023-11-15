import 'package:flutter/material.dart';
import 'package:flutter_gl/flutter_gl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3D Globe Model',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Отображение 3D модели глобуса'),
        ),
        body: GlobeModelWidget(),
      ),
    );
  }
}

class GlobeModelWidget extends StatefulWidget {
  @override
  _GlobeModelWidgetState createState() => _GlobeModelWidgetState();
}

class _GlobeModelWidgetState extends State<GlobeModelWidget> {
  GLController glController;

  @override
  Widget build(BuildContext context) {
    return GLScene(
      onSceneCreated: (controller) {
        glController = controller;

        // Загрузка 3D модели
        glController.loadModel('assets/globe.obj');
      },
      onRender: () {
        // Здесь вы можете выполнять дополнительные операции рендеринга, если нужно
      },
    );
  }
}
