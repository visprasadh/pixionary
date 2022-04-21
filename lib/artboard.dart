import 'package:flutter/material.dart';

import 'tile.dart';

class ArtBoard extends StatefulWidget {
  final Color color;
  final int size;

  const ArtBoard({
    required this.color,
    required this.size,
  });

  @override
  State<ArtBoard> createState() => _ArtBoardState();
}

class _ArtBoardState extends State<ArtBoard> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double dimension =
        (screenHeight > screenWidth) ? screenWidth * 0.7 : screenHeight * 0.7;
    final double side = dimension / widget.size;
    final columnList = <Row>[];
    final rowList = <Tile>[];

    void generateLists() {
      for (int i = 0; i < widget.size; i++) {
        rowList.add(
          Tile(
            color: widget.color,
            side: side,
          ),
        );
      }
      Row row = Row(children: rowList);
      for (int i = 0; i < widget.size; i++) {
        columnList.add(row);
      }
    }

    generateLists();

    return Container(
      alignment: Alignment.center,
      height: dimension * 1.01,
      width: dimension * 1.01,
      child: Column(
        children: columnList,
      ),
    );
  }
}
