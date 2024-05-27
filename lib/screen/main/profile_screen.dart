import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ProfileScreen()));
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<List<bool>> ladders = [];
  int numPlayers = 4;
  int numRows = 5;
  @override
  void initState() {
    super.initState();
    generateLadders();
  }

  void generateLadders() {
    Random rand = Random();
    ladders = List.generate(numRows,
        (index) => List.generate(numPlayers - 1, (index) => rand.nextBool()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('사다리 게임')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildLadder(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  generateLadders();
                });
              },
              child: const Text('사다리 재생성'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLadder() {
    return SizedBox(
      width: 300,
      height: 400,
      child: CustomPaint(
        painter: LadderPainter(ladders),
      ),
    );
  }
}

class LadderPainter extends CustomPainter {
  final List<List<bool>> ladders;
  LadderPainter(this.ladders);

  @override
  void paint(Canvas canvas, Size size) {
    double colWidth = size.width / (ladders[0].length + 1);
    double rowHeight = size.height / ladders.length;
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;

    for (int row = 0; row < ladders.length; row++) {
      for (int col = 0; col < ladders[row].length; col++) {
        double startX = colWidth * (col + 1);
        double startY = rowHeight * row;
        double endY = startY + rowHeight;

        // 세로선
        canvas.drawLine(Offset(startX, startY), Offset(startX, endY), paint);

        // 가로선
        if (ladders[row][col]) {
          double endX = startX + colWidth;
          canvas.drawLine(Offset(startX, startY + rowHeight / 2),
              Offset(endX, startY + rowHeight / 2), paint);
        }
      }
    }

    // 플레이어 위치 선
    for (int col = 0; col <= ladders[0].length; col++) {
      double startX = colWidth * col;
      canvas.drawLine(Offset(startX, 0), Offset(startX, size.height), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
