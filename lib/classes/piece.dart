import 'package:chess/classes/spot.dart';

abstract class Piece {
  final bool isWhite = false;
  final bool isCaptured = false;

  Piece.color(isWhite);
  Piece({positionX, positionY});

  bool canMove(Spot start, Spot end);
}
