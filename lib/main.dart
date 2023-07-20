import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MaterialApp(
    home: LiquidSwipeDemo(),
  ));
}

class LiquidSwipeDemo extends StatefulWidget {
  @override
  _LiquidSwipeDemoState createState() => _LiquidSwipeDemoState();
}

class _LiquidSwipeDemoState extends State<LiquidSwipeDemo> {
  final pages = [
    ClipRect(
      clipBehavior: Clip.hardEdge,
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'Page 1',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    ),
    ClipRect(
      clipBehavior: Clip.hardEdge,
      child: Container(
        color: Colors.green,
        child: Center(
          child: Text(
            'Page 2',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    ),
    ClipRect(
      clipBehavior: Clip.hardEdge,
      child: Container(
        color: Colors.red,
        child: Center(
          child: Text(
            'Page 3',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableSideReveal: true,
      ),
    );
  }
}
