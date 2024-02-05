import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isRed = true;

  void _changeColor() {
    setState(() {
      _isRed = !_isRed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Change App'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _changeColor,
          child: Container(
            width: 200,
            height: 200,
            color: _isRed ? Colors.red : Colors.green,
            child: const Center(
              child: Text(
                'Tap to Change Color',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}