import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'Navigation',
        home: Scaffold(
          appBar: AppBar(
            title: Text('TapBox'),
          ),
          body: Center(child: TapBoxA()),
        ),
      ),
    );

// ウィジェット自身で状態管理するパターン
class TapBoxA extends StatefulWidget {
  _TapBoxAState createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) => GestureDetector(
        onTap: _handleTap,
        child: Container(
          child: Center(
            child: Text(
              _active ? 'Active' : 'Inactive',
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            ),
          ),
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.grey[600],
          ),
        ),
      );
}
