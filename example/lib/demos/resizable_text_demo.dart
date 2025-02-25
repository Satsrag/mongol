import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

class ResizableTextDemo extends StatefulWidget {
  const ResizableTextDemo({Key? key}) : super(key: key);
  @override
  State<ResizableTextDemo> createState() => _ResizableTextDemoState();
}

class _ResizableTextDemoState extends State<ResizableTextDemo> {
  static const originalHeight = 200.0;
  double height = originalHeight;
  double scaledHeight = originalHeight;
  TextScaler scaler = TextScaler.noScaling;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resizable MongolText')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Container(
              height: height,
              color: Colors.blue[100],
              child: MongolText(
                text,
                style: const TextStyle(fontSize: 30),
                textScaler: scaler,
              ),
            ),
            _scaleBoxRed(),
            _sizeBoxGreen(),
          ],
        ),
      ),
    );
  }

  Padding _scaleBoxRed() {
    return Padding(
      padding: EdgeInsets.only(top: height),
      child: GestureDetector(
        onVerticalDragUpdate: (details) {
          setState(() {
            height += details.delta.dy;
            scaler = TextScaler.linear((height) / scaledHeight);
          });
        },
        child: Container(
          color: Colors.red,
          width: 20,
          height: 20,
        ),
      ),
    );
  }

  Padding _sizeBoxGreen() {
    return Padding(
      padding: EdgeInsets.only(top: height, left: 30),
      child: GestureDetector(
        onVerticalDragUpdate: (details) {
          setState(() {
            height += details.delta.dy;
          });
        },
        onVerticalDragEnd: (details) {
          // todo: this is not working
          // scaledHeight = height / scale;
        },
        child: Container(
          color: Colors.green,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}

const text = 'ᠨᠢᠭᠡ ᠬᠣᠶᠠᠷ ᠭᠤᠷᠪᠠ ᠳᠦᠷᠪᠡ ᠲᠠᠪᠤ ᠵᠢᠷᠭᠤᠭ᠎ᠠ ᠳᠣᠯᠣᠭ᠎ᠠ ᠨᠠᠢᠮᠠ ᠶᠢᠰᠦ ᠠᠷᠪᠠ';
