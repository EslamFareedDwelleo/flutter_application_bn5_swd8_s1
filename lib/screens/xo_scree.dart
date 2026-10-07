import 'dart:math';

import 'package:flutter/material.dart';

class XOScreen extends StatefulWidget {
  const XOScreen({super.key});

  @override
  State<XOScreen> createState() => _XOScreenState();
}

class _XOScreenState extends State<XOScreen> {
  List<String> board = List.generate(9, (index) => "");

  int xScore = 0;
  int oScore = 0;

  List<List<int>> winnings = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];

  void checkGame() {
    bool won = false;
    for (var row in winnings) {
      if (board[row[0]] == board[row[1]] &&
          board[row[0]] == board[row[2]] &&
          board[row[0]].isNotEmpty) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("${board[row[0]]} WON!!!!")));

        if (board[row[0]] == "X") {
          xScore++;
        } else {
          oScore++;
        }
        board = List.generate(9, (index) => "");
        won = true;
      }
    }
    if (!won && board.where((e) => e.isNotEmpty).length == 9) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Drawwww!!")));
      newGame();
    }
  }

  bool xTurn = true;

  void play(int index) {
    if (board[index].isEmpty) {
      board[index] = xTurn ? "X" : "O";
      xTurn = !xTurn;
    }

    if (board.where((e) => e.isNotEmpty).length >= 5) {
      checkGame();
    }
    setState(() {});
  }

  void reset() {
    board = List.generate(9, (index) => "");

    xScore = 0;
    oScore = 0;
    xTurn = true;

    setState(() {});
  }

  void newGame() {
    board = List.generate(9, (index) => "");
    xTurn = !xTurn;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(xTurn ? "X Turn" : "O Turn"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: board.length,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => ElevatedButton(
              onPressed: () {
                play(index);

                int ranIndex = Random().nextInt(9);
                while (board[ranIndex].isNotEmpty) {
                  ranIndex = Random().nextInt(9);
                }

                play(ranIndex);
              },
              child: Text(
                board[index],
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          ),

          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("User X", style: TextStyle(fontSize: 40)),
                    Text("$xScore", style: TextStyle(fontSize: 30)),
                  ],
                ),
                Column(
                  children: [
                    Text("User 0", style: TextStyle(fontSize: 40)),
                    Text("$oScore", style: TextStyle(fontSize: 30)),
                  ],
                ),
              ],
            ),
          ),

          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    newGame();
                  },
                  child: Text("New Game"),
                ),
                ElevatedButton(
                  onPressed: () {
                    reset();
                  },
                  child: Text("Reset Score"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
