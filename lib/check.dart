import 'package:flutter/material.dart';

bool checkIfAlreadyPresent(double size, int pos, int player) {
  if (tic[pos][0] < size) return true;
  return false;
}

int togglePlayer(int currentPlayer) {
  if (currentPlayer == 2) return 1;
  return 2;
}

List tic = [
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0]
];
List ballsPresent = [
  [4, 3, 2, 1],
  [4, 3, 2, 1]
];
List newTic = [
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0]
];

Color player2 = Color(0xFF00FF00);
Color player1 = Color(0xFFED0800);
Color backgroundColor = const Color(0xFF000000);

bool checkVertical() {
  for (int i = 0; i <= 2; i++) {
    int player = tic[i][1];
    if (player == 0) continue;
    if (player == tic[i + 3][1] && player == tic[i + 6][1]) return true;
  }
  return false;
}

bool checkHorizontal() {
  for (int i = 0; i <= 6; i += 3) {
    int player = tic[i][1];
    if (player == 0) continue;
    if (player == tic[i + 1][1] && player == tic[i + 2][1]) return true;
  }
  return false;
}

bool checkDiagonals() {
  int player = tic[0][1];
  // if (player == 0) continue;
  if (player == tic[4][1] && player == tic[8][1] && player != 0) return true;
  player = tic[2][1];
  if (player == tic[4][1] && player == tic[6][1] && player != 0) return true;
  return false;
}
