import 'package:flutter/material.dart';
import 'package:pixionary/artboard.dart';
import 'package:pixionary/colorButton.dart';
import 'package:pixionary/tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool enabled = false;
  Color color = Colors.purple;
  double size = 5;

  void colorChange(Color c) {
    setState(() {
      color = c;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double dimension =
        (screenHeight > screenWidth) ? screenWidth * 0.65 : screenHeight * 0.65;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'PIXIONARY',
          style: TextStyle(
            fontSize: 36,
            fontFamily: 'Pixeled',
            color: color,
          ),
        ),
        ArtBoard(
          color: color,
          size: size.toInt(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ColorButton(
                    onPress: () => colorChange(Colors.purple),
                    color: Colors.purple,
                  ),
                  ColorButton(
                    onPress: () => colorChange(Colors.indigo),
                    color: Colors.indigo,
                  ),
                  ColorButton(
                    onPress: () => colorChange(Colors.blue),
                    color: Colors.blue,
                  ),
                  ColorButton(
                    onPress: () => colorChange(Colors.green),
                    color: Colors.green,
                  ),
                  ColorButton(
                    onPress: () => colorChange(Colors.yellow),
                    color: Colors.yellow,
                  ),
                  ColorButton(
                    onPress: () => colorChange(Colors.orange),
                    color: Colors.orange,
                  ),
                  ColorButton(
                    onPress: () => colorChange(Colors.red),
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          width: dimension,
          child: Slider(
            min: 3,
            max: 15,
            activeColor: color,
            inactiveColor: Colors.grey,
            thumbColor: Colors.black,
            value: size,
            divisions: 12,
            onChanged: (value) {
              setState(() {
                size = value;
              });
            },
          ),
        ),
      ],
    ));
  }
}
