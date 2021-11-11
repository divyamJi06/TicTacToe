import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoe/check.dart';

// import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: backgroundColor),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPlayer = 1;
  bool playerwon = false;

  Widget player1Drag() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ballsPresent[0][80 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  ball(80.0, 1),
                  Text(
                    "x${ballsPresent[0][3]}",
                    style: TextStyle(color: player1, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[0][60 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  ball(60.0, 1),
                  Text(
                    "x${ballsPresent[0][2]}",
                    style: TextStyle(color: player1, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[0][40 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  ball(40.0, 1),
                  Text(
                    "x${ballsPresent[0][1]}",
                    style: TextStyle(color: player1, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[0][20 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  ball(20.0, 1),
                  Text(
                    "x${ballsPresent[0][0]}",
                    style: TextStyle(color: player1, fontSize: 15),
                  ),
                ],
              ),
      ],
    );
  }

  Widget player1NoDrag() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ballsPresent[0][80 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  emptyBall(80.0, 1),
                  Text(
                    "x${ballsPresent[0][3]}",
                    style: TextStyle(color: player1, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[0][60 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  emptyBall(60.0, 1),
                  Text(
                    "x${ballsPresent[0][2]}",
                    style: TextStyle(color: player1, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[0][40 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  emptyBall(40.0, 1),
                  Text(
                    "x${ballsPresent[0][1]}",
                    style: TextStyle(color: player1, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[0][20 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  emptyBall(20.0, 1),
                  Text(
                    "x${ballsPresent[0][0]}",
                    style: TextStyle(color: player1, fontSize: 15),
                  ),
                ],
              ),
      ],
    );
  }

  Widget player2Drag() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ballsPresent[1][80 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  ball(80.0, 2),
                  Text(
                    "x${ballsPresent[1][3]}",
                    style: TextStyle(color: player2, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[1][60 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  ball(60.0, 2),
                  Text(
                    "x${ballsPresent[1][2]}",
                    style: TextStyle(color: player2, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[1][40 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  ball(40.0, 2),
                  Text(
                    "x${ballsPresent[1][1]}",
                    style: TextStyle(color: player2, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[1][20 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  ball(20.0, 2),
                  Text(
                    "x${ballsPresent[1][0]}",
                    style: TextStyle(color: player2, fontSize: 15),
                  ),
                ],
              ),
      ],
    );
  }

  Widget player2NoDrag() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ballsPresent[1][80 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  emptyBall(80.0, 2),
                  Text(
                    "x${ballsPresent[1][3]}",
                    style: TextStyle(color: player2, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[1][60 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  emptyBall(60.0, 2),
                  Text(
                    "x${ballsPresent[1][2]}",
                    style: TextStyle(color: player2, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[1][40 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  emptyBall(40.0, 2),
                  Text(
                    "x${ballsPresent[1][1]}",
                    style: TextStyle(color: player2, fontSize: 15),
                  ),
                ],
              ),
        ballsPresent[1][20 ~/ 20 - 1] == 0
            ? Container()
            : Row(
                children: [
                  emptyBall(20.0, 2),
                  Text(
                    "x${ballsPresent[1][0]}",
                    style: TextStyle(color: player2, fontSize: 15),
                  ),
                ],
              ),
      ],
    );
  }

  // List newTic = [
  //   [0, 0],
  //   [0, 0],
  //   [0, 0],
  //   [0, 0],
  //   [0, 0],
  //   [0, 0],
  //   [0, 0],
  //   [0, 0],
  //   [0, 0]
  // ];

  // List newBallsPresent = [
  // [4, 3, 2, 1],
  // [4, 3, 2, 1]
  // ];

  void reset() {
    setState(() {
      playerwon = false;
      currentPlayer = 1;
      tic.clear();
      tic.addAll(newTic);
      ballsPresent.clear();
      ballsPresent = [
        [4, 3, 2, 1],
        [4, 3, 2, 1]
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tii"),
        backgroundColor: backgroundColor,
        actions: [
          IconButton(
              onPressed: () {
                reset();
              },
              icon: const Icon(Icons.reset_tv_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            playerwon
                ? Text(
                    "Player ${currentPlayer == 2 ? 1 : 2} won",
                    style: TextStyle(
                        color: currentPlayer == 1 ? player2 : player1,
                        fontSize: 30),
                  )
                : Text(
                    "Player $currentPlayer turn",
                    style: TextStyle(
                        color: currentPlayer == 1 ? player1 : player2,
                        fontSize: 30),
                  ),
            SizedBox(height: 30),
            Text(
              "Player 1",
              style: TextStyle(color: player1, fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            currentPlayer == 1 ? player1Drag() : player1NoDrag(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                slot(0, currentPlayer),
                slot(1, currentPlayer),
                slot(2, currentPlayer),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                slot(3, currentPlayer),
                slot(4, currentPlayer),
                slot(5, currentPlayer),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                slot(6, currentPlayer),
                slot(7, currentPlayer),
                slot(8, currentPlayer),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            currentPlayer == 2 ? player2Drag() : player2NoDrag(),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Player 2",
              style: TextStyle(color: player2, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }

  Widget emptyBall(var ballSize, int player) {
    return Container(
      width: ballSize,
      height: ballSize,
      decoration: BoxDecoration(
          color: player == 1 ? player1 : player2,
          borderRadius: BorderRadius.circular(ballSize)),
    );
  }

  Widget slot(int i, int player) {
    return DragTarget(
      builder: (
        BuildContext context,
        List<dynamic> accepted,
        List<dynamic> rejected,
      ) {
        return Container(
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 2.0,
                  color: player == 1 ? player1 : player2,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10)),
          child: Container(
            width: tic[i][0] == 0 ? 0 : tic[i][0],
            // width: 80,
            height: tic[i][0] == 0 ? 0 : tic[i][0],
            // height: 80,
            decoration: BoxDecoration(
                color: tic[i][1] == 1 ? player1 : player2,
                borderRadius:
                    BorderRadius.circular(tic[i][0] == 0 ? 0 : tic[i][0])),
          ),
        );
      },
      onWillAccept: (data) {
        return checkIfAlreadyPresent(data as double, i, 1);
      },
      onAccept: (data) {
        setState(() {
          tic.removeAt(i);
          tic.insert(i, [data, currentPlayer]);
        });
      },
    );
  }

  Widget ball(double ballSize, int player) {
    return Draggable(
      data: ballSize,
      onDragCompleted: () {
        setState(() {
          if (checkDiagonals() || checkHorizontal() || checkVertical()) {
            playerwon = true;
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      "TicTacToe",
                      textAlign: TextAlign.center,
                    ),
                    // backgroundColor: backgroundColor,
                    actions: [
                      OutlinedButton(
                          // style: ButtonSty),
                          onPressed: () {
                            reset();
                            Navigator.pop(context);
                          },
                          child: Text("Play Again",
                              style: TextStyle(
                                color: backgroundColor,
                              )))
                    ],
                    content: Text(
                      "Player ${currentPlayer == 1 ? 2 : 1} won",
                      style: TextStyle(
                          color: currentPlayer == 1 ? player2 : player1),
                    ),
                  );
                });
            // Get.defaultDialog(
            //   title: "TicTacToe",
            // middleText: "Player $currentPlayer won",
            // titleStyle: const TextStyle(color: Colors.black),
            // textConfirm: "Reset",
            // confirmTextColor: Colors.white,
            // buttonColor: Colors.red,
            // // barrierDismissible: false,
            // radius: 10,
            // onConfirm: () {
            //   reset();
            // }
            // );

          }
          ballsPresent[currentPlayer - 1][ballSize ~/ 20 - 1]--;
          currentPlayer = togglePlayer(currentPlayer);
        });
      },
      childWhenDragging: Container(
        width: ballSize,
        height: ballSize,
        decoration: BoxDecoration(
            // color: player == 1 ? player1 : player2,
            borderRadius: BorderRadius.circular(ballSize)),
      ),
      child: Container(
        width: ballSize,
        height: ballSize,
        decoration: BoxDecoration(
            color: player == 1 ? player1 : player2,
            borderRadius: BorderRadius.circular(ballSize)),
      ),
      feedback: Container(
        width: ballSize,
        height: ballSize,
        decoration: BoxDecoration(
            color: player == 1 ? player1 : player2,
            borderRadius: BorderRadius.circular(ballSize)),
      ),
    );
  }
}
