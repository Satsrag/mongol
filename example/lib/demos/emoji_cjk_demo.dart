import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

class EmojiCjkDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.blue[100],
          child: MongolText.rich(
            text,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

//const text = 'ᠨᠢᠭᠡ ᠬᠣᠶᠠᠷ ᠭᠤᠷᠪᠠ ᠳᠦᠷᠪᠡ ᠲᠠᠪᠤ ᠵᠢᠷᠭᠤᠭ᠎ᠠ ᠨᠠᠢᠮᠠ ᠶᠢᠰᠦ ᠠᠷᠪᠠ';

const text = TextSpan(
  children: [
    TextSpan(
        text:
            'ᠨᠢᠭᠡ ᠬᠣᠶᠠᠷ ᠭᠣᠷᠪᠠ ᠳᠥᠷᠪᠡ ᠲᠠᠪᠤ ᠵᠢᠷᠭᠤᠭ᠎ᠠ ᠳᠣᠯᠣᠭ᠎ᠠ ᠨᠠᠢᠮᠠ ᠶᠢᠰᠦ ᠠᠷᠪᠠ \uD83D\uDE42 ᠬᠣᠷᠢᠨ ᠨᠢᠭᠡ ᠬᠣᠷᠢᠨ ᠬᠣᠶᠠᠷ ᠬᠣᠷᠢᠨ ᠭᠣᠷᠪᠠ '),
    TextSpan(text: 'one two three four five six seven eight nine ten '),
    TextSpan(text: '👨‍👩‍👧'),
    TextSpan(text: '👋🏿'),
    TextSpan(text: '🇭🇺'),
    TextSpan(text: '一二三四五六七八九十'),
    TextSpan(
        text:
            '\uD83D\uDE03\uD83D\uDE0A\uD83D\uDE1C\uD83D\uDE01\uD83D\uDE2C\uD83D\uDE2E\uD83D\uDC34\uD83D\uDC02\uD83D\uDC2B\uD83D\uDC11\uD83D\uDC10'),
    TextSpan(text: '①②③㉑㊿〖汉字〗한국어モンゴル語English? ︽ᠮᠣᠩᠭᠣᠯ︖︾'),
  ],
);
