import 'package:flutter/material.dart';
import 'package:pixionary/artboard.dart';
import 'package:pixionary/tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool enabled = false;
  Color color = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Text(
            'PIXIONARY',
            style: TextStyle(
              fontSize: 36,
              fontFamily: 'Pixeled',
            ),
          ),
          ArtBoard(
            color: color,
            size: 5,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  color = Colors.orange;
                }),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  color = Colors.blue;
                }),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
