import 'package:canvas_paint/canvas/FlutterPainter.dart';
import 'package:flutter/material.dart';

///
/// @ClassName HomePage
/// @Description
/// @Author waitwalker
/// @Date 2020-03-07
///
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: FlutterPainter(),
      ),
    );
  }
}