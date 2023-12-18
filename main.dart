import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  double _margin = 0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        width: _width,
        color: _color,
        margin: EdgeInsets.all(_margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("animate margin"),
              onPressed: () => setState(() => _margin = 50),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text("animate color"),
              onPressed: () => setState(() => _color = Colors.purple),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text("animate width"),
              onPressed: () => setState(() => _width = 400),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text("animate opacity"),
              onPressed: () => setState(() => _opacity = 0),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text(
                "hide me",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
