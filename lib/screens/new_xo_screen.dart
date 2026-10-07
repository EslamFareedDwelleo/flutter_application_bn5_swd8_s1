import 'package:flutter/material.dart';

class NewXoScreen extends StatefulWidget {
  const NewXoScreen({super.key});

  @override
  State<NewXoScreen> createState() => _NewXoScreenState();
}

class _NewXoScreenState extends State<NewXoScreen> {
  List<String> board = ["", "", "", "", "", "", "", "", ""];

  bool xTurn = true;
  int xScore = 0;
  int oScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${xTurn ? "X" : "O"} Turn"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => ElevatedButton(
              onPressed: () {
                if (board[index].isEmpty) {
                  board[index] = xTurn ? "X" : "O";
                  xTurn = !xTurn;
                }

                if (board[0] == board[1] &&
                    board[0] == board[2] &&
                    board[0].isNotEmpty) {
                  if (board[0] == "X") {
                    xScore++;
                  } else {
                    oScore++;
                  }

                  // Won
                  board = ["", "", "", "", "", "", "", "", ""];
                }

                setState(() {});
              },
              child: Text(board[index], style: TextStyle(fontSize: 50)),
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
        ],
      ),
    );
  }
}
