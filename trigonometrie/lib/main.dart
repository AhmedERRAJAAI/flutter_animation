import 'package:flutter/material.dart';

void main() {
  runApp(const AnimateFlutter());
}

class AnimateFlutter extends StatefulWidget {
  const AnimateFlutter({super.key});

  @override
  State<AnimateFlutter> createState() => _AnimateFlutterState();
}
/*
 0.0 : 0
 0.5 : 180 degrees
 1 : 360 degrees
*/

class _AnimateFlutterState extends State<AnimateFlutter> with SingleTickerProviderStateMixin{
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
    );
  }
}
