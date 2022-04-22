import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  final Color color;
  final double side;

  const Tile({
    required this.color,
    required this.side,
  });

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  bool enabled = false;
  Color fill = Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        enabled = !enabled;
        fill = enabled ? widget.color : Colors.white;
      }),
      child: Container(
        height: widget.side,
        width: widget.side,
        decoration: BoxDecoration(
          color: fill,
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
